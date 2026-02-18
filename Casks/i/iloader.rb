cask "iloader" do
  version "2.0.3"
  sha256 "4ce13e630374c9ca97a6230c5e1399fb6eb9b8156a0fe860d12ec61b9ed0d1a5"

  url "https://github.com/nab138/iloader/releases/download/v#{version}/iloader-darwin-universal.dmg",
      verified: "github.com/nab138/iloader/"
  name "iloader"
  desc "iOS Sideloading Companion"
  homepage "https://iloader.app/"

  app "iloader.app"

  zap trash: "~/Library/Application Support/me.nabdev.iloader"
end
