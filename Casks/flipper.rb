cask "flipper" do
  version "0.114.1"
  sha256 "8bb78cec46f69e5cb63db5d15ed7dfa7f6a72c1d1c26ecc14acd27a194c88ba3"

  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper-mac.dmg",
      verified: "github.com/facebook/flipper/"
  name "Facebook Flipper"
  desc "Desktop debugging platform for mobile developers"
  homepage "https://fbflipper.com/"

  app "Flipper.app"
end
