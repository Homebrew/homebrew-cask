cask "clearance" do
  version "1.3.2"
  sha256 "b81099105ce6a60f780dba3286a88023140cfd299317dde21aacfde69aa1b687"

  url "https://github.com/prime-radiant-inc/clearance/releases/download/v#{version}/Clearance-#{version}-macOS.dmg"
  name "Clearance"
  desc "Markdown viewer and editor"
  homepage "https://github.com/prime-radiant-inc/clearance/blob/main/apps/macos/README.md"

  livecheck do
    url "https://github.com/prime-radiant-inc/clearance/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Clearance.app"
  binary "#{appdir}/Clearance.app/Contents/Helpers/clearance"

  zap trash: [
    "~/Library/Caches/com.primeradiant.Clearance",
    "~/Library/HTTPStorages/com.primeradiant.Clearance",
    "~/Library/HTTPStorages/com.primeradiant.Clearance.binarycookies",
    "~/Library/Preferences/com.primeradiant.Clearance.plist",
    "~/Library/WebKit/com.primeradiant.Clearance",
  ]
end
