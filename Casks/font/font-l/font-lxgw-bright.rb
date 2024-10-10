cask "font-lxgw-bright" do
  version "5.501"
  sha256 "79d84d9d91566ecb5c67295ee501677ad483a14ed70588529e00b15b8c3ba9c5"

  url "https://github.com/lxgw/LxgwBright/releases/download/v#{version}/LXGWBright.7z"
  name "LXGW Bright"
  homepage "https://github.com/lxgw/LxgwBright"

  font "LXGWBright/LXGWBright-Italic.ttf"
  font "LXGWBright/LXGWBright-Light.ttf"
  font "LXGWBright/LXGWBright-LightItalic.ttf"
  font "LXGWBright/LXGWBright-Medium.ttf"
  font "LXGWBright/LXGWBright-MediumItalic.ttf"
  font "LXGWBright/LXGWBright-Regular.ttf"

  # No zap stanza required
end
