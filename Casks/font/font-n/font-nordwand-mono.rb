cask "font-nordwand-mono" do
  version "1.3.3"
  sha256 "d9955d0b1b924e11fd822ceb23986a1253d83b00d9e66aa97c6439c6ccfb8913"

  url "https://github.com/tywr/Nordwand-Mono/releases/download/#{version}/NordwandMono-TTF.zip"
  name "Nordwand Mono"
  homepage "https://github.com/tywr/Nordwand-Mono/"

  font "NordwandMono-Bold.ttf"
  font "NordwandMono-BoldItalic.ttf"
  font "NordwandMono-ExtraLight.ttf"
  font "NordwandMono-ExtraLightItalic.ttf"
  font "NordwandMono-Italic.ttf"
  font "NordwandMono-Light.ttf"
  font "NordwandMono-LightItalic.ttf"
  font "NordwandMono-Medium.ttf"
  font "NordwandMono-MediumItalic.ttf"
  font "NordwandMono-Regular.ttf"
  font "NordwandMono-SemiBold.ttf"
  font "NordwandMono-SemiBoldItalic.ttf"
  font "NordwandMono-Thin.ttf"
  font "NordwandMono-ThinItalic.ttf"

  # No zap stanza required
end
