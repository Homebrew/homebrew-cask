cask "font-spectral-sc" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/spectralsc"
  name "Spectral SC"
  homepage "https://fonts.google.com/specimen/Spectral+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Spectral SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SpectralSC-Bold.ttf"
  font "SpectralSC-BoldItalic.ttf"
  font "SpectralSC-ExtraBold.ttf"
  font "SpectralSC-ExtraBoldItalic.ttf"
  font "SpectralSC-ExtraLight.ttf"
  font "SpectralSC-ExtraLightItalic.ttf"
  font "SpectralSC-Italic.ttf"
  font "SpectralSC-Light.ttf"
  font "SpectralSC-LightItalic.ttf"
  font "SpectralSC-Medium.ttf"
  font "SpectralSC-MediumItalic.ttf"
  font "SpectralSC-Regular.ttf"
  font "SpectralSC-SemiBold.ttf"
  font "SpectralSC-SemiBoldItalic.ttf"

  # No zap stanza required
end
