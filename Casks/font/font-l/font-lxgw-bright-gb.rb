cask "font-lxgw-bright-gb" do
  version "5.330"
  sha256 "f9378f55d7c77216be7b430ec5b9a834d89e92a16fd640eb5a32d73b43adc3a0"

  url "https://github.com/lxgw/LxgwBright/releases/download/v#{version}/LXGWBrightGB.7z"
  name "LXGW Bright GB"
  homepage "https://github.com/lxgw/LxgwBright"

  font "LXGWBrightGB/LXGWBrightGB-Medium.ttf"
  font "LXGWBrightGB/LXGWBrightGB-MediumItalic.ttf"
  font "LXGWBrightGB/LXGWBrightGB-Regular.ttf"
  font "LXGWBrightGB/LXGWBrightGB-Italic.ttf"
  font "LXGWBrightGB/LXGWBrightGB-SemiLight.ttf"
  font "LXGWBrightGB/LXGWBrightGB-SemiLightItalic.ttf"

  # No zap stanza required
end
