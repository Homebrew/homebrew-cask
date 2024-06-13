cask "font-0xproto-nerd-font" do
  version "3.2.1"
  sha256 "103f8dff0b6c06687a08cbe91bd446e03935ac6dbc0ba6f426967b45e3edd3b6"

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
