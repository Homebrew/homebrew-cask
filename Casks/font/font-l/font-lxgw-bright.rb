cask "font-lxgw-bright" do
  version "5.330"
  sha256 "3cdd310f625bb1016b3aea59207a22ea39350950e267627b28f7756d25a27dd1"

  url "https://github.com/lxgw/LxgwBright/releases/download/v#{version}/LXGWBright.7z"
  name "LXGW Bright"
  homepage "https://github.com/lxgw/LxgwBright"

  font "LXGWBright/LXGWBright-Italic.ttf"
  font "LXGWBright/LXGWBright-Medium.ttf"
  font "LXGWBright/LXGWBright-MediumItalic.ttf"
  font "LXGWBright/LXGWBright-Regular.ttf"
  font "LXGWBright/LXGWBright-SemiLight.ttf"
  font "LXGWBright/LXGWBright-SemiLightItalic.ttf"

  # No zap stanza required
end
