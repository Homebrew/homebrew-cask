cask "font-0xproto" do
  version "2.300"
  sha256 "9699314a7a061a8d4e5b1540755f9125c3321e0dee72b295797ea38691526cbe"

  url "https://github.com/0xType/0xProto/releases/download/#{version}/0xProto_#{version.dots_to_underscores}.zip"
  name "0xProto"
  homepage "https://github.com/0xType/0xProto"

  font "fonts/0xProto-Bold.otf"
  font "fonts/0xProto-Regular.otf"
  font "fonts/0xProto-Italic.otf"

  # No zap stanza required
end
