cask "telari" do
  version "0.5.4"
  sha256 "d5ed015774a3e978fc12e6bbd29f50d87c8c6d5d3b8311d1acb275ebacaafcee"

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
