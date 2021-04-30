cask "river-sparkle" do
  version "3.0.8,8420"
  sha256 :no_check

  url "https://sparkleapp.com/update/Sparkle.zip"
  name "Sparkle"
  desc "App to build websites"
  homepage "https://sparkleapp.com/"

  livecheck do
    url "https://sparkleapp.com/update/appcast.php?lang=en"
    strategy :sparkle
  end

  app "Sparkle.app"

  zap trash: [
    "~/Library/Application Support/eu.riverdesign.sparkle",
    "~/Library/Caches/eu.riverdesign.sparkle",
    "~/Library/Preferences/eu.riverdesign.sparkle.plist",
  ]
end
