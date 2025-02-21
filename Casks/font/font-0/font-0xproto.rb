cask "font-0xproto" do
  version "2.202"
  sha256 "4247363c00fafc5343d47e3a8a45e6dac7416019dabbf614b6aa24a5af056c1d"

  url "https://github.com/0xType/0xProto/releases/download/#{version}/0xProto_#{version.dots_to_underscores}.zip"
  name "0xProto"
  homepage "https://github.com/0xType/0xProto"

  font "fonts/0xProto-Bold.otf"
  font "fonts/0xProto-Regular.otf"
  font "fonts/0xProto-Italic.otf"

  # No zap stanza required
end
