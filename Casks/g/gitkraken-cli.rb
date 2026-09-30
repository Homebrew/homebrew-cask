cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.76"
  sha256 arm:          "5e803087364519414783d7a802179c3e803a4ddf47a43b2cfde413a7320ef694",
         intel:        "fc1d361158ec8284944d03386dda8d44edb1706e0410e57c3402518ad4a49963",
         arm64_linux:  "878a940c4debaa10398e26236da48b6f593996dae97ccda612d932b5bb589036",
         x86_64_linux: "29aaa087e0e306da6bd325ea7e4e1087e94dc287566d0d529bc82d05815a8301"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
