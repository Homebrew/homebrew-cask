cask "screentranslate" do
  version "1.5.0"
  sha256 "f3a76773a0a05d8a3d04df35668819ef48b783f156587434b9fba7dcd34cd294"

  url "https://github.com/hcmhcs/screenTranslate/releases/download/v#{version}/ScreenTranslate-#{version}.dmg",
      verified: "github.com/hcmhcs/screenTranslate/"
  name "ScreenTranslate"
  desc "Capture or select text on screen to translate instantly"
  homepage "https://screentranslate.filient.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "ScreenTranslate.app"

  zap trash: [
    "~/Library/Application Support/com.filient.ScreenTranslate",
    "~/Library/Preferences/com.filient.ScreenTranslate.plist",
  ]
end
