cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.59"
  sha256 arm:          "0c7dec740bf79234212e81bc6fe93c0a19cc05c6d89946e4d5fdbf22bea11873",
         intel:        "2103da9e964c9b9858e605b3db716f3dacd2a93e13af205547ab02ffc0489925",
         arm64_linux:  "00b007827554383caf080e499c409d05b5df6085d7f15f1b6562ef9306f07681",
         x86_64_linux: "9973cff99eab0403d94d18be282cfd7b3cbe9cac54ab26fae992070bcc71b5ce"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
