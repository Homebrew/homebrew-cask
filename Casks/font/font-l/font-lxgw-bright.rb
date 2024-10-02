cask "font-lxgw-bright" do
  version "5.500"
  sha256 "e93fc20125bbd4741122e613090d2940cff213ebf96e63a650fbfa0e527b278c"

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
