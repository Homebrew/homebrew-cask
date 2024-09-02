cask "font-0xproto" do
  version "2.200"
  sha256 "80c27d825d021178d3788aed41bb2082228fb8227012e8926039d290ce0be8a4"

  url "https://github.com/0xType/0xProto/releases/download/#{version}/0xProto_#{version.dots_to_underscores}.zip"
  name "0xProto"
  homepage "https://github.com/0xType/0xProto"

  font "0xProto-Bold.otf"
  font "0xProto-Regular.otf"
  font "0xProto-Italic.otf"

  # No zap stanza required
end
