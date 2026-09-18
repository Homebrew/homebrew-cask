cask "telari" do
  version "0.5.6"
  sha256 "4a6ae43adafd007ece5ed44b73958d4f2bb62386057e010c166e62de950c6293"

  url "https://dl.telari.app/Telari-#{version}.dmg"
  name "Telari"
  desc "Markdown reader built for typography"
  homepage "https://telari.app/"

  livecheck do
    url "https://dl.telari.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :ventura

  app "Telari.app"

  uninstall quit: "dev.telari.reader"

  zap trash: [
    "~/.config/telari",
    "~/Library/Application Scripts/dev.telari.reader.quicklook",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.telari.reader.sfl*",
    "~/Library/Caches/dev.telari.reader",
    "~/Library/Containers/dev.telari.reader.quicklook",
    "~/Library/HTTPStorages/dev.telari.reader",
    "~/Library/Preferences/dev.telari.reader.plist",
    "~/Library/WebKit/dev.telari.reader",
  ]
end
