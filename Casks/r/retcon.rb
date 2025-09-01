cask "retcon" do
  version "1.4.1"
  sha256 "3251189b19f71c76522c78a60060843b58167f890bc0bc0d8162129f47ed956d"

  url "https://downloads.lemon.garden/retcon/retcon-#{version}.dmg",
      verified: "downloads.lemon.garden/retcon/"
  name "Retcon"
  desc "Drag-and-drop Git history editor"
  homepage "https://retcon.app/"

  livecheck do
    url "https://lemon.garden/retcon/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel == "release" }&.short_version
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Retcon.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/garden.lemon.retcon.sfl*",
    "~/Library/Application Support/Retcon",
    "~/Library/Caches/garden.lemon.Retcon",
    "~/Library/HTTPStorages/garden.lemon.Retcon",
    "~/Library/Preferences/garden.lemon.Retcon.plist",
    "~/Library/Saved Application State/garden.lemon.Retcon.savedState",
  ]
end
