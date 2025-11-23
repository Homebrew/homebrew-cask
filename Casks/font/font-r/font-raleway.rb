cask "font-raleway" do
  version "4.101"
  sha256 "523070d32418b4223e79f4629bf28b935723906d156d2e6af016e6a34fe6d3eb"

  url "https://github.com/theleagueof/raleway/releases/download/#{version}/Raleway-#{version}.tar.xz",
      verified: "github.com/theleagueof/raleway/"
  name "Raleway"
  homepage "https://www.theleagueofmoveabletype.com/raleway"

  font "Raleway-#{version}/static/OTF/Raleway-Thin.otf"
  font "Raleway-#{version}/static/OTF/Raleway-ExtraLight.otf"
  font "Raleway-#{version}/static/OTF/Raleway-Light.otf"
  font "Raleway-#{version}/static/OTF/Raleway-Medium.otf"
  font "Raleway-#{version}/static/OTF/Raleway-Regular.otf"
  font "Raleway-#{version}/static/OTF/Raleway-SemiBold.otf"
  font "Raleway-#{version}/static/OTF/Raleway-Bold.otf"
  font "Raleway-#{version}/static/OTF/Raleway-ExtraBold.otf"
  font "Raleway-#{version}/static/OTF/Raleway-Black.otf"
  font "Raleway-#{version}/static/OTF/Raleway-ThinItalic.otf"
  font "Raleway-#{version}/static/OTF/Raleway-ExtraLightItalic.otf"
  font "Raleway-#{version}/static/OTF/Raleway-LightItalic.otf"
  font "Raleway-#{version}/static/OTF/Raleway-Italic.otf"
  font "Raleway-#{version}/static/OTF/Raleway-MediumItalic.otf"
  font "Raleway-#{version}/static/OTF/Raleway-SemiBoldItalic.otf"
  font "Raleway-#{version}/static/OTF/Raleway-BoldItalic.otf"
  font "Raleway-#{version}/static/OTF/Raleway-ExtraBoldItalic.otf"
  font "Raleway-#{version}/static/OTF/Raleway-BlackItalic.otf"
  font "Raleway-#{version}/variable/TTF/Raleway-VF.ttf"
  font "Raleway-#{version}/variable/TTF/Raleway-Italic-VF.ttf"

  # No zap stanza required
end
