cask "privatus" do
  version "6.3.1"
  sha256 "ba722c87a54dbfdc8792d8ac10af420f69505ba5e6877bcc3d7c5dd5c0b5953b"

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
