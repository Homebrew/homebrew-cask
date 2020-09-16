cask "hocus-focus" do
  version "1.3"
  sha256 "8a51419112d9626497217a9953460c075480a139e1b1a47b175454be8a04f85a"

  url "https://hocusfoc.us/static/releases/hocusfocus-#{version}.zip"
  appcast "https://hocusfoc.us/updates.xml"
  name "Hocus Focus"
  desc "Automatically hides inactive application windows"
  homepage "https://hocusfoc.us/"

  app "Hocus Focus.app"

  zap trash: [
    "~/Library/Caches/com.uglyapps.HocusFocus",
    "~/Library/Application Support/com.uglyapps.HocusFocus",
    "~/Library/Preferences/com.uglyapps.HocusFocus.plist",
  ]
end
