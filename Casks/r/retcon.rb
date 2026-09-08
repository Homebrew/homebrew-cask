cask "retcon" do
  version "1.6.3"
  sha256 "09d1f705f03622013562196c4972e44635e70dce324c6aa2d782c1265e1337bd"

  url "https://downloads.lemon.garden/retcon/retcon-#{version}.dmg"
  name "Retcon"
  desc "Drag-and-drop Git history editor"
  homepage "https://retcon.app/"

  livecheck do
    url "https://downloads.lemon.garden/retcon/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel == "release" }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

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
