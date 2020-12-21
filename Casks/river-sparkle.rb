cask "river-sparkle" do
  version "3.0.6,8392"
  sha256 :no_check

  url "https://sparkleapp.com/update/Sparkle.zip"
  appcast "https://sparkleapp.com/update/appcast.php?lang=en"
  name "Sparkle"
  desc "App to build websites"
  homepage "https://sparkleapp.com/"

  app "Sparkle.app"

  zap trash: [
    "~/Library/Application Support/eu.riverdesign.sparkle",
    "~/Library/Caches/eu.riverdesign.sparkle",
    "~/Library/Preferences/eu.riverdesign.sparkle.plist",
  ]
end
