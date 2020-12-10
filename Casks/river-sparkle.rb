cask "river-sparkle" do
  version "3.0.3,8354"
  sha256 "cb23d7cb63e4457f1f2bb5f91fa3e5f80ec5318b80b4de9be527daf3545f8c88"

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
