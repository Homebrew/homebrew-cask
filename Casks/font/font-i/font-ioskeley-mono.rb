cask "font-ioskeley-mono" do
  version "2.0.0-beta.1"
  sha256 "00693cd2ce76e93fccc357b0357a92b5ec2e17fa3cd994e67355baafbe98f8b7"

  url "https://github.com/ahatem/IoskeleyMono/releases/download/v#{version}/IoskeleyMono-Normal.zip"
  name "Ioskeley Mono"
  homepage "https://github.com/ahatem/IoskeleyMono"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)/i)
    strategy :github_latest
  end

  font "Unhinted/IoskeleyMono-Black.ttf"
  font "Unhinted/IoskeleyMono-BlackItalic.ttf"
  font "Unhinted/IoskeleyMono-Bold.ttf"
  font "Unhinted/IoskeleyMono-BoldItalic.ttf"
  font "Unhinted/IoskeleyMono-ExtraBold.ttf"
  font "Unhinted/IoskeleyMono-ExtraBoldItalic.ttf"
  font "Unhinted/IoskeleyMono-ExtraLight.ttf"
  font "Unhinted/IoskeleyMono-ExtraLightItalic.ttf"
  font "Unhinted/IoskeleyMono-Italic.ttf"
  font "Unhinted/IoskeleyMono-Light.ttf"
  font "Unhinted/IoskeleyMono-LightItalic.ttf"
  font "Unhinted/IoskeleyMono-Medium.ttf"
  font "Unhinted/IoskeleyMono-MediumItalic.ttf"
  font "Unhinted/IoskeleyMono-Regular.ttf"
  font "Unhinted/IoskeleyMono-SemiBold.ttf"
  font "Unhinted/IoskeleyMono-SemiBoldItalic.ttf"
  font "Unhinted/IoskeleyMono-SemiLight.ttf"
  font "Unhinted/IoskeleyMono-SemiLightItalic.ttf"
  font "Unhinted/IoskeleyMono-Thin.ttf"
  font "Unhinted/IoskeleyMono-ThinItalic.ttf"

  # No zap stanza required
end
