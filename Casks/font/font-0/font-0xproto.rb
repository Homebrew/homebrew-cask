cask "font-0xproto" do
  version "2.502"
  sha256 "179654842a35734034963a9ac4437438d1b48bedb4e1201c13d2eb93d1973e9d"

  url "https://github.com/0xType/0xProto/releases/download/#{version}/0xProto_#{version.dots_to_underscores}.zip"
  name "0xProto"
  homepage "https://github.com/0xType/0xProto"

  font "0xProto-Bold.otf"
  font "0xProto-Regular.otf"
  font "0xProto-Italic.otf"
  font "No-Ligatures/0xProto-Bold-NL.otf"
  font "No-Ligatures/0xProto-Italic-NL.otf"
  font "No-Ligatures/0xProto-Regular-NL.otf"
  font "ZxProto/ZxProto-Bold.otf"
  font "ZxProto/ZxProto-Italic.otf"
  font "ZxProto/ZxProto-Regular.otf"

  # No zap stanza required
end
