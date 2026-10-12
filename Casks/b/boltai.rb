cask "boltai" do
  version "2.18.0"
  sha256 "3505995227f14c50450156f08563bf732a26ed4e302a47c482370cf5ce601c5b"

  url "https://updates.boltai.com/dmg/BoltAI-#{version}.dmg"
  name "BoltAI 2"
  desc "AI chat client"
  homepage "https://boltai.com/"

  livecheck do
    url "https://updates.boltai.com/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "BoltAI.app"

  zap trash: [
    "~/Library/Application Scripts/co.podzim.boltai-mobile",
    "~/Library/Containers/co.podzim.boltai-mobile",
    "~/Library/Saved Application State/co.podzim.boltai-mobile.savedState",
  ]
end
