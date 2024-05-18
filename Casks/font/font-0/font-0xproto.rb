cask "font-0xproto" do
  version "2.001"
  sha256 "fa35e66b4bc045717dcec67f6b6a83a8128b34b1bd024a7f6a689908f15d6cf2"

  url "https://github.com/0xType/0xProto/releases/download/#{version}/0xProto_#{version.dots_to_underscores}.zip"
  name "0xProto"
  desc "Programming font focused on source code legibility"
  homepage "https://github.com/0xType/0xProto"

  font "0xProto-Regular.otf"
  font "0xProto-Italic.otf"

  # No zap stanza required
end
