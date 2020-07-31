cask "background-music" do
  version "0.3.2"
  sha256 "0cd7b488b5ab97a1ecb496e484a6c209c29f35ab503e6f73b45e56719a7aba18"

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
