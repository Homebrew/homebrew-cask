cask "font-0xproto-nerd-font" do
  version "3.5.1"
  sha256 "3f2d36e4fa8b3af2f97b14b57c5b0f57f4c1bda5a59533fb913a9ff3344db7ce"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/0xProto.tar.xz"
  name "0xProto Nerd Font (0xProto)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "0xProtoNerdFont-Bold.ttf"
  font "0xProtoNerdFont-Italic.ttf"
  font "0xProtoNerdFont-Regular.ttf"
  font "0xProtoNerdFontMono-Bold.ttf"
  font "0xProtoNerdFontMono-Italic.ttf"
  font "0xProtoNerdFontMono-Regular.ttf"
  font "0xProtoNerdFontPropo-Bold.ttf"
  font "0xProtoNerdFontPropo-Italic.ttf"
  font "0xProtoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
