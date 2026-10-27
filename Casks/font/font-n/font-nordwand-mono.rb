cask "font-nordwand-mono" do
  version "1.3.4"
  sha256 "21feb40d80d241c8da4d99c61cef64fbeeacbc5953f7f2cca27ff1bd9cd52c01"

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
