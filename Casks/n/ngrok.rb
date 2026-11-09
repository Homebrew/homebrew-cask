cask "ngrok" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "3.39.13,msmi2kd3cjc,a"
    sha256 "514967480546b968e87e9ec47efd513ce5012e11000957f9696a05c73b05b908"
  end
  on_intel do
    version "3.39.13,9bmfVHa69NJ,a"
    sha256 "b0ec8786315fd41e4da490aa88cf7868f554ef7ea2873b435ce971d02961c1a9"
  end

  url "https://bin.ngrok.com/#{version.csv.third}/#{version.csv.second}/ngrok-v#{version.major}-#{version.csv.first}-darwin-#{arch}.zip"
  name "ngrok"
  desc "Reverse proxy, secure introspectable tunnels to localhost"
  homepage "https://ngrok.com/"

  livecheck do
    url "https://ngrok.com/download/archive/ngrok/ngrok-v#{version.major}/stable/ngrok_archive"
    regex(%r{href=.*?/([^/]+)/([^/]+)/ngrok[._-]v#{version.major}[._-]v?(\d+(?:\.\d+)+)[._-]darwin[._-]#{arch}\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[1]},#{match[0]}" }
    end
  end

  depends_on :macos

  binary "ngrok"
  generate_completions_from_executable "/usr/bin/env", "SHELL=/bin/bash",
                                       "#{staged_path}/ngrok", "completion",
                                       base_name: "ngrok", shells: [:bash], shell_parameter_format: :none
  generate_completions_from_executable "/usr/bin/env", "SHELL=/bin/zsh",
                                       "#{staged_path}/ngrok", "completion",
                                       base_name: "ngrok", shells: [:zsh], shell_parameter_format: :none
  generate_completions_from_executable "/usr/bin/env", "SHELL=/bin/fish",
                                       "#{staged_path}/ngrok", "completion",
                                       base_name: "ngrok", shells: [:fish], shell_parameter_format: :none

  postflight_steps do
    set_permissions "ngrok", "0755"
  end

  zap trash: [
    "~/.ngrok#{version.major}",
    "~/Library/Application Support/ngrok",
  ]
end
