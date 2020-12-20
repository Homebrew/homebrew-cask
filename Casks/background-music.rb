cask "background-music" do
  if MacOS.version <= :catalina
    version "0.3.2"
    sha256 "0cd7b488b5ab97a1ecb496e484a6c209c29f35ab503e6f73b45e56719a7aba18"
  else
    version "0.4.0-SNAPSHOT-c0ab98b"
    sha256 "7fdbcab0542c496cb37f3f958b63d4ec2cd2fe1ce1debbcdf0cf6cb5f1226384"
  end
  url "https://github.com/kyleneideck/BackgroundMusic/releases/download/v#{version}/BackgroundMusic-#{version}.pkg"
  appcast "https://github.com/kyleneideck/BackgroundMusic/releases.atom"
  name "Background Music"
  homepage "https://github.com/kyleneideck/BackgroundMusic"

  depends_on macos: ">= :yosemite"

  pkg "BackgroundMusic-#{version}.pkg"

  uninstall launchctl: "com.bearisdriving.BGM.XPCHelper",
            pkgutil:   "com.bearisdriving.BGM",
            quit:      "com.bearisdriving.BGM.App",
            script:    {
              executable: "/Applications/Background Music.app/Contents/Resources/_uninstall-non-interactive.sh",
              sudo:       true,
            }
end
