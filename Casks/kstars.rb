cask "kstars" do
  version "3.5.0"
  sha256 "9c848145ae76aa07f5feb102911a0be07e08642935a60ee3c7bd3fcc39698a71"

  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg",
      verified: "indilib.org/jdownloads/kstars/"
  name "KStars"
  homepage "https://edu.kde.org/kstars/"

  app "kstars.app"
end
