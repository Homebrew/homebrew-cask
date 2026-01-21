cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.51"
  sha256 arm:          "1a865777821f73bc8b21543eed3f7ab471a244c930e4d571024c43a53511fc5b",
         intel:        "021bb059664391555cd9a3a8d7fc223c7243a658c53a473e488527d5db486b77",
         arm64_linux:  "4244da49a05f1d362139bac9df81190862c82918344650bd52e19484e1af9cf7",
         x86_64_linux: "2bb8836af4b15abafb4e8131ce403cdedf576be859c36416d32352e22ea7b5cb"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
