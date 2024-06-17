cask "choreo" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.4"
  sha256 arm:   "89989762f522e95b2d20ca9c362856a0b48d0229c853e6e170170f0a9fe68dfa",
         intel: "4b3573eb8cd86349a6c9231ebf4f586279cf33214c3c4fd01de3d7bd2763833f"

  url "https://github.com/wso2/choreo-cli/releases/download/v#{version}/choreo-cli-v#{version}-darwin-#{arch}.zip"
  name "choreo"
  desc "Command-line Interface tool for WSO2"
  homepage "https://github.com/wso2/choreo-cli/releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "choreo"

  # post-install message
  postflight do
    puts "\nFor generating completion scripts, run the following command:" \
         "\n\n    choreo completion <shell-name> >> ~/.choreo/bin/choreo-completion" \
         "\n\nSupported shell names: bash, zsh, fish\n\n" \
         "To load the completion scripts, add the following line to your shell configuration file:" \
         "\n\n   [ -f ~/.choreo/bin/choreo-completion ] && source ~/.choreo/bin/choreo-completion\n\n"
  end

  zap trash: "~/.choreo"
end
