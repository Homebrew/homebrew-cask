cask "boltai" do
  version "3.0.0"
  sha256 "05df4167074f6c6973c3c39541db6696080be3048e1cef0b3f37b55b7efbdcf7"

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
