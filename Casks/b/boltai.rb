cask "boltai" do
  version "2.18.1"
  sha256 "5329c3c8c85578b489441b3668dbf9b399952de4f5f24c744acdf6533d295ac8"

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
