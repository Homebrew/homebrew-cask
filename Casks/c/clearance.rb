cask "clearance" do
  version "1.3.1"
  sha256 "5df69007b847390e3ecf9afc40b8911f597a64fd2438dacc32e413fca22a7a13"

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
