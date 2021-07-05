cask "privatus" do
  version "6.3.5"
  sha256 "a30b13062680bf40cafd8e49c2386759f051cc140ce8e2413f9fa72626f3be7c"

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
