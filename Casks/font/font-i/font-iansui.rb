cask "font-iansui" do
  version "1.011"
  sha256 "e2b8c39e37b28d501a4afd12238475fddd496d6b95d07c1835d8252efa5769ad"

  url "https://github.com/ButTaiwan/iansui/releases/download/v#{version}/iansui.zip"
  name "iansui"
  homepage "https://github.com/ButTaiwan/iansui"

  font "Iansui-Regular.ttf"

  # No zap stanza required
end
