cask "font-0xproto" do
  version "2.100"
  sha256 "3c6fb670f65fde3d5f91301955680c282710d91f55580462152528f3e92849e8"

  url "https://github.com/0xType/0xProto/releases/download/#{version}/0xProto_#{version.dots_to_underscores}.zip"
  name "0xProto"
  homepage "https://github.com/0xType/0xProto"

  font "fonts/0xProto-Regular.otf"
  font "fonts/0xProto-Italic.otf"

  # No zap stanza required
end
