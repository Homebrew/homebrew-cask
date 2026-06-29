cask "gitkraken-cli" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "3.1.69"
  sha256 arm:          "9d330f61a39484f742e5d39c597046c0ecf74b569d2b8476908f4df99e7a6d1b",
         intel:        "e2b2573e33faf0005ef696a3df6fac131a29717a2a246b23971661ebbca4032b",
         arm64_linux:  "e5bfb99d9c3a80453ecf853f6a4855d3b04fc350da25204d00705a5081b6bd8c",
         x86_64_linux: "b5c7cd0e859bac47823ad042340d03706c93d839dcf2c2fa37f4213c7ffd3860"

  url "https://github.com/gitkraken/gk-cli/releases/download/v#{version}/gk_#{version}_#{os}_#{arch}.zip"
  name "GitKraken CLI"
  desc "CLI for GitKraken"
  homepage "https://github.com/gitkraken/gk-cli"

  binary "gk"

  zap trash: "~/.gitkraken"
end
