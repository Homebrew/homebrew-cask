cask "soulver" do
  version "3.4.9-138"
  sha256 "f3bb76180892bbe87cceccb3b66c7e0619a8f630c6a331a8898875dbe9535464"

  url "https://soulver.app/mac/sparkle/soulver-#{version}.zip"
  appcast "https://soulver.app/mac/sparkle/appcast.xml"
  name "Soulver"
  desc "Notepad with a built-in calculator"
  homepage "https://soulver.app/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Soulver #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Soulver 3",
    "~/Library/Application Support/app.soulver.mac",
    "~/Library/Preferences/app.soulver.mac.plist",
  ]
end
