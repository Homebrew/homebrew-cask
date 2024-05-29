# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "choreo" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.3"
  sha256 arm:   "0985ebb872bae5946a351363a402c4d3fd4eb3d4e035b104c0e2a491afef71dc",
         intel: "999919b615f5fad3972c3fc09404361b2d53604549f4ab662ab409da3e87542d"

  url "https://github.com/wso2/choreo-cli/releases/download/v#{version}/choreo-cli-v#{version}-darwin-#{arch}.zip"
  name "choreo"
  desc "Command-line Interface tool for WSO2"
  homepage "https://github.com/wso2/choreo-cli/releases"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  binary "choreo"

  zap trash: "~/.choreo"

  # post-install message
  postflight do
    user_home = Dir.home
    choreo_home = "#{user_home}/.choreo"

    detected_profile = ""
    completion_script = ""

    # Create the .choreo directory
    FileUtils.mkdir_p choreo_home

    if ENV["SHELL"].include? "bash"
      if File.exist?("#{user_home}/.bashrc")
        detected_profile = "#{user_home}/.bashrc"
      elsif File.exist?("#{user_home}/.bash_profile")
        detected_profile = "#{user_home}/.bash_profile"
      end
      # Genereate the completion script for the Choreo CLI
      # save output to a variable
      completion_script = `#{staged_path}/choreo completion bash`
    elsif ENV["SHELL"].include? "zsh"
      if File.exist?("#{user_home}/.zshrc")
        detected_profile = "#{user_home}/.zshrc"
      elsif File.exist?("#{user_home}/.zprofile")
        detected_profile = "#{user_home}/.zprofile"
      end
      # Genereate the completion script for the Choreo CLI
      # save output to a variable
      completion_script = `#{staged_path}/choreo completion zsh`
    end

    unless completion_script.empty?
      # Create the file to store the completion script
      FileUtils.mkdir_p "#{choreo_home}/bin"

      # write the completion script to a file
      File.write("#{choreo_home}/bin/choreo-completion", completion_script)
    end

    if detected_profile.empty?
      if File.exist?("#{user_home}/.profile")
        detected_profile = "#{user_home}/.profile"
      elsif File.exist?("#{user_home}/.bashrc")
        detected_profile = "#{user_home}/.bashrc"
      elsif File.exist?("#{user_home}/.bash_profile")
        detected_profile = "#{user_home}/.bash_profile"
      elsif File.exist?("#{user_home}/.zshrc")
        detected_profile = "#{user_home}/.zshrc"
      elsif File.exist?("#{user_home}/.zprofile")
        detected_profile = "#{user_home}/.zprofile"
      end
    end

    if File.exist? detected_profile
      # Check if the profile file already contains the Choreo CLI completion script
      if File.foreach(detected_profile).grep(/choreo-completion/).none?
        File.open(detected_profile, "a") do |file|
          file.write("\n# Choreo CLI\n")
          file.write("[ -f $CHOREO_DIR/bin/choreo-completion ] && source $CHOREO_DIR/bin/choreo-completion")
        end
      end

      # Source the profile file
      system("source", detected_profile.to_s)
    end
  end
end
