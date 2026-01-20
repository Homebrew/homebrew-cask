cask "boltai" do
  version "2.5.1"
  sha256 "17470b9455b4aed39e25b193353c530e558fa8548cd57526a8f8c24be31b6822"

  url "https://updates.boltai.com/dmg/BoltAI-#{version}.dmg"
  name "BoltAI"
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
