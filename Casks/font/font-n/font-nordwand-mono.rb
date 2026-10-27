cask "font-nordwand-mono" do
  version "1.4.0"
  sha256 "e019af5e4148f28efe1a122a2e386cf78d5f7047b943c9a0cd6cdf9e8490d801"

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

  zap :not_required
end
