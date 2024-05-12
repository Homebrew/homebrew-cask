cask "font-0xproto" do
  version "2.000"
  sha256 "ef69ffaa0f7ebab546081aa9b551b34db12f832627b75cb420164a07d9c6b4d0"

  url "https://github.com/0xType/0xProto/releases/download/#{version}/0xProto_#{version.dots_to_underscores}.zip"
  name "0xProto"
  desc "Programming font focused on source code legibility"
  homepage "https://github.com/0xType/0xProto"

  font "fonts/0xProto-Regular.otf"
  font "fonts/0xProto-Italic.otf"

  # No zap stanza required
end
