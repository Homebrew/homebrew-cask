cask "privatus" do
  version "6.3.4"
  sha256 "06ed23d7aa7771e6643abc7bfbed53525c0cfb19588921e0b52ac02dd2c88b92"

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
