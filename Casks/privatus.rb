cask "privatus" do
  version "6.3.2"
  sha256 "5e21339f7063b197a3df482247379f04d4cce5d356ba9800f39e143ace5ef3b7"

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
