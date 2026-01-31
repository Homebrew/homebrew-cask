cask "font-geist" do
  version "1.7.0"
  sha256 "ad2186c976c588c483bfd6a7166fba2e2ec743027e14be4618ba1f0e5baadab9"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/geist-font-#{version}.zip",
      verified: "github.com/vercel/geist-font/"
  name "Geist Sans"
  homepage "https://vercel.com/font"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "geist-font-#{version}/fonts/Geist/otf/Geist-Black.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-BlackItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Bold.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-BoldItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-ExtraBold.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-ExtraBoldItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-ExtraLight.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-ExtraLightItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Light.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-LightItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Medium.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-MediumItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Regular.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-RegularItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-SemiBold.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-SemiBoldItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Thin.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-ThinItalic.otf"
  font "geist-font-#{version}/fonts/Geist/variable/Geist-Italic[wght].ttf"
  font "geist-font-#{version}/fonts/Geist/variable/Geist[wght].ttf"

  # No zap stanza required
end
