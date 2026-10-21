cask "ngrok" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "3.39.12,5UNrdiFf185,a"
    sha256 "c497e73fe893ff759c54e48191649f6c4dc42f4e0dfd48dd48d5c78135016838"
  end
  on_intel do
    version "3.39.12,fniJ9xeaKet,a"
    sha256 "f393ae672e5bb81135505aa6f9933a8a52b78b1278643c758927d2893e13aa84"
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
