cask "river-sparkle" do
  version "2.8.12"
  sha256 "62d90b6dda2c7efb65423ee6eb0d71c51155c9818686ec927915173f0944fdd8"

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
