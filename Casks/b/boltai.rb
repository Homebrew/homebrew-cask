cask "boltai" do
  version "2.6.1"
  sha256 "0d192678707a91209fb4dda93ef1c0a3180430da2ecfcde7f9f1e7dc33153ace"

  url "https://updates.boltai.com/dmg/BoltAI-#{version}.dmg"
  name "BoltAI 2"
  desc "AI chat client"
  homepage "https://boltai.com/"

  livecheck do
    url "https://updates.boltai.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "BoltAI #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/co.podzim.boltai-mobile",
    "~/Library/Containers/co.podzim.boltai-mobile",
    "~/Library/Saved Application State/co.podzim.boltai-mobile.savedState",
  ]
end
