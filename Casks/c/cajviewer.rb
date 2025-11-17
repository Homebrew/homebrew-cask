cask "cajviewer" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "9.5.0,25014"
    sha256 "c2024ac446d760d4e3cd4a81753b6e46b8cfc48dc9ebce2376cb0e1ada5e1974"
  end
  on_intel do
    version "9.5.0,24366"
    sha256 "b832a16631ac11a9f66d62f6b9e8eed83d355e9edec1d7b011b41732f2e5a03b"
  end

  url "https://download.cnki.net/cajPackage/CAJMACPackage/CAJViewer_#{version.csv.first}.#{version.csv.second}_#{arch}.dmg"
  name "cajviewer"
  desc "CNKI document reader supporting CAJ and PDF formats"
  homepage "https://cajviewer.cnki.net/"

  livecheck do
    url "https://cajviewer.cnki.net/download.html"
    regex(/CAJViewer_v?(\d+(?:\.\d+)+)[._-](\d+)_#{arch}\.dmg/im)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "CAJViewer.app"

  zap trash: [
    "~/Documents/TTKN",
    "~/Library/Application Support/TTKN",
    "~/Library/Preferences/com.ttkn.CAJViewer.plist",
    "~/Library/Preferences/net.cnki.CAJViewer.plist",
  ]
end
