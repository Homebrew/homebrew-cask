cask "font-0xproto" do
  version "2.201"
  sha256 "cc383e1562085438d026ef6c3ad678ca0a12d8349013485adce9791890bf8821"

  url "https://github.com/0xType/0xProto/releases/download/#{version}/0xProto_#{version.dots_to_underscores}.zip"
  name "0xProto"
  homepage "https://github.com/0xType/0xProto"

  font "0xProto-Bold.otf"
  font "0xProto-Regular.otf"
  font "0xProto-Italic.otf"

  # No zap stanza required
end
