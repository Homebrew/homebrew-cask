cask "playonmac" do
  on_mojave :or_older do
    version "4.3.3"
    sha256 "795099f03efde730daf9e30c8c55575851f89484d9d38dee7d010987fce1ed85"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "4.4.3"
    sha256 "b907e50d9457e90722d557dc009d8cc1c5be8e45dc13b6246fa6551acea393b6"

    livecheck do
      url "https://www.playonmac.com/en/download.html"
      regex(%r{href=.*?/PlayOnMac_(\d+(?:\.\d+)*)\.dmg}i)
    end
  end

  url "https://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  name "PlayOnMac"
  desc "Allows installation and use of software designed for Windows"
  homepage "https://www.playonmac.com/"

  app "PlayOnMac.app"

  zap trash: [
    "~/Library/PlayOnMac",
    "~/Library/Preferences/org.playonmac.playonmac.plist",
    "~/Library/Saved Application State/org.playonmac.playonmac.savedState",
  ]
end
