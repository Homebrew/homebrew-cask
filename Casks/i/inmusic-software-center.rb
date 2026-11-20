cask "inmusic-software-center" do
  version "1.41.0,1411"
  sha256 "8a05e14028cd2fdb0a4e4ce669cd17544de42b25b7a662075a73beed0305b2fe"

  url "https://cdn.inmusicbrands.com/SI04/#{version.csv.second || version.no_dots}/inMusic%20Software%20Center-darwin-universal-#{version.csv.first}.zip"
  name "inMusic Software Center"
  desc "Administration tool for inMusic brand creative software"
  homepage "https://www.airmusictech.com/downloads/"

  livecheck do
    url "https://inmusic.to/ISCMAC"
    regex(%r{/(\d+)/inMusic%20Software%20Center-darwin-universal[._-]v?(\d+(:?\.\d+)+)\.zip}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      (match[1] == match[2].tr(".", "")) ? match[2] : "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "inMusic Software Center.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.inmusic-software-center.sfl*",
    "~/Library/Application Support/com.inmusicbrands.softwareunlock",
    "~/Library/Application Support/inMusic Software Center",
    "~/Library/Caches/com.electron.inmusic-software-center",
    "~/Library/Caches/com.electron.inmusic-software-center.ShipIt",
    "~/Library/HTTPStorages/com.electron.inmusic-software-center",
    "~/Library/Preferences/com.electron.inmusic-software-center.plist",
    "~/Library/Saved Application State/com.electron.inmusic-software-center.savedState",
  ]
end
