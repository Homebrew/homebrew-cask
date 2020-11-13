cask "river-sparkle" do
  version "3.0.1"
  sha256 "20b2b7781cf21c9249575c9011c29c7ad040cb8c14b48674e0840b2ca2ba3a5e"

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
