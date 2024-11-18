cask "font-0xproto-nerd-font" do
  version "3.3.0"
  sha256 "99deb8d6b26e8946792f75107761bb46c4b927b5d21e4f9b2e163eb6efd6487b"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/0xProto.zip"
  name "0xProto Nerd Font (0xProto)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "0xProtoNerdFont-Regular.ttf"
  font "0xProtoNerdFontMono-Regular.ttf"
  font "0xProtoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
