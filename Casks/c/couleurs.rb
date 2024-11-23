cask "couleurs" do
  version "1.2.1"
  sha256 "32d1b1898e9791c8137edc746c9f7ef508a12194669aae567719f58be2c8a876"

  url "https://couleursapp.com/couleurs-#{version}.zip"
  name "Couleurs"
  desc "Grab and tweak the colours you see on your screen"
  homepage "https://couleursapp.com/"

  livecheck do
    url "https://couleursapp.com/updates/releases.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "Couleurs.app"

  zap trash: [
    "~/Library/HTTPStorages/com.13bold.Couleurs",
    "~/Library/Preferences/com.13bold.Couleurs.plist",
    "~/Library/Saved Application State/com.13bold.Couleurs.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
