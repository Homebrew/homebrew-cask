cask "boltai" do
  version "3.1.1"
  sha256 "5bde53b0b2c1339c58c4ebc9b3a7bc7019e25dce3c5b2ed03d564bfc87dda20a"

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
        "~/Library/Application Support/BoltAI",
        "~/Library/Containers/co.podzim.boltai-mobile",
        "~/Library/Saved Application State/co.podzim.boltai-mobile.savedState",
      ],
      rmdir: "~/.boltai"
end
