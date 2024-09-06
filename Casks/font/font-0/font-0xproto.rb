cask "font-0xproto" do
  version "2.201"
  sha256 "201c9ee7c8f32245c4d97798b46235e2caa3586e930522ec6885c4040d08fa70"

  url "https://github.com/0xType/0xProto/releases/download/#{version}/0xProto_#{version.dots_to_underscores}.zip"
  name "0xProto"
  homepage "https://github.com/0xType/0xProto"

  font "0xProto-Bold.otf"
  font "0xProto-Regular.otf"
  font "0xProto-Italic.otf"

  # No zap stanza required
end
