cask "river-sparkle" do
  version "3.0"
  sha256 "8a0301204731016e2aae15eb360b386c7be3e98a74b6fd288688de54a74c2d74"

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
