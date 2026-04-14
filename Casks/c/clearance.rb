cask "clearance" do
  version "1.3.3"
  sha256 "1ba81958af83bcbe04a56f959dadeceb445cceaf9ef38c969b00fbe3c7286724"

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
