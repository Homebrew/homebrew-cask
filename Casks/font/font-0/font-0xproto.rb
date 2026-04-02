cask "font-0xproto" do
  version "2.502"
  sha256 "402d046b6056111ae5b974892fe2d6d921c66a64681980ec81db051de05851e7"

  url "https://github.com/0xType/0xProto/releases/download/#{version}/0xProto_#{version.dots_to_underscores}.zip"
  name "0xProto"
  homepage "https://github.com/0xType/0xProto"

  font "fonts/0xProto-Bold.otf"
  font "fonts/0xProto-Regular.otf"
  font "fonts/0xProto-Italic.otf"
  font "fonts/No-Ligatures/0xProto-Bold-NL.otf"
  font "fonts/No-Ligatures/0xProto-Italic-NL.otf"
  font "fonts/No-Ligatures/0xProto-Regular-NL.otf"
  font "fonts/ZxProto/ZxProto-Bold.otf"
  font "fonts/ZxProto/ZxProto-Italic.otf"
  font "fonts/ZxProto/ZxProto-Regular.otf"

  # No zap stanza required
end
