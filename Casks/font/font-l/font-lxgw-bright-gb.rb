cask "font-lxgw-bright-gb" do
  version "5.526"
  sha256 "e2adc37688c94fc152d1fc40186c37f3380bf6188d269aad61b88331e7ecd35c"

  url "https://github.com/lxgw/LxgwBright/releases/download/v#{version}/LXGWBrightGB.7z"
  name "LXGW Bright GB"
  homepage "https://github.com/lxgw/LxgwBright"

  font "LXGWBrightGB/LXGWBrightGB-Italic.ttf"
  font "LXGWBrightGB/LXGWBrightGB-Light.ttf"
  font "LXGWBrightGB/LXGWBrightGB-LightItalic.ttf"
  font "LXGWBrightGB/LXGWBrightGB-Medium.ttf"
  font "LXGWBrightGB/LXGWBrightGB-MediumItalic.ttf"
  font "LXGWBrightGB/LXGWBrightGB-Regular.ttf"

  # No zap stanza required
end
