cask "font-0xproto-nerd-font" do
  version "3.5.0"
  sha256 "b6cd12d383255548292c12fc3f8b03e197407d8299393fb27e351aba42224965"

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
