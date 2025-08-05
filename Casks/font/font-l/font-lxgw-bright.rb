cask "font-lxgw-bright" do
  version "5.526"
  sha256 "e5502c2ad8142d496650d188a0645ec15ee6605c60ccdb21945f6bd6cd266e21"

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
