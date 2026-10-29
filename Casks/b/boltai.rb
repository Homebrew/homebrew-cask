cask "boltai" do
  version "2.18.3"
  sha256 "b680cf76c55f554eb3df352f4f814875b6fb1cf7ab27a3784526260acf070e51"

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
