cask "privatus" do
  version "6.3.3"
  sha256 "8b1c5cd1e256a1a86d9e93f52d964a057485c59141225a07f0838890a3a3f7e9"

  url "https://sweetpproductions.com/products/privatus#{version.major}/Privatus#{version.major}.dmg",
      verified: "sweetpproductions.com/products/"
  name "Privatus"
  desc "Automated online privacy protection"
  homepage "https://privatusapp.com/"

  livecheck do
    url "https://sweetpproductions.com/products/privatus#{version.major}/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Privatus.app"

  zap trash: [
    "~/Library/Containers/com.sweetpproductions.Privatus#{version.major}",
    "~/Library/Preferences/com.sweetpproductions.Privatus#{version.major}.plist",
  ]
end
