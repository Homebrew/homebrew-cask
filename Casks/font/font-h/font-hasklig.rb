cask "font-hasklig" do
  version "1.2"
  sha256 "9cd35a7449b220dc84f9516c57817e147003fc905a477f1ec727816d9d8a81d4"

  url "https://github.com/i-tu/Hasklig/releases/download/v#{version}/Hasklig-#{version}.zip"
  name "Hasklig"
  homepage "https://github.com/i-tu/Hasklig"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "OTF/Hasklig-Black.otf"
  font "OTF/Hasklig-BlackIt.otf"
  font "OTF/Hasklig-Bold.otf"
  font "OTF/Hasklig-BoldIt.otf"
  font "OTF/Hasklig-ExtraLight.otf"
  font "OTF/Hasklig-ExtraLightIt.otf"
  font "OTF/Hasklig-It.otf"
  font "OTF/Hasklig-Light.otf"
  font "OTF/Hasklig-LightIt.otf"
  font "OTF/Hasklig-Medium.otf"
  font "OTF/Hasklig-MediumIt.otf"
  font "OTF/Hasklig-Regular.otf"
  font "OTF/Hasklig-Semibold.otf"
  font "OTF/Hasklig-SemiboldIt.otf"

  # No zap stanza required
end
