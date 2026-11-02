cask "boltai" do
  version "2.18.4"
  sha256 "edc8c5ad52e119f7c8c8f027d1f9d2972ac7bfc03e4a44dc2de4dc3010274809"

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
