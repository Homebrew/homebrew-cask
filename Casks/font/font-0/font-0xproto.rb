cask "font-0xproto" do
  version "2.501"
  sha256 "c9cf76dd74d9f645c82bb7f725662a6e0870d1f8b3867b3c019bf3570aaa8974"

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
