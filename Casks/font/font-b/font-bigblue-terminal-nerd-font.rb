cask "font-bigblue-terminal-nerd-font" do
  version "3.5.1"
  sha256 "5c2589a37394459fe2207a6e46ccb5c37a978c51c6a5a2f92985a1356be27846"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/BigBlueTerminal.tar.xz"
  name "BigBlueTerm Nerd Font families (BigBlue Terminal)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "BigBlueTerm437NerdFont-Regular.ttf"
  font "BigBlueTerm437NerdFontMono-Regular.ttf"
  font "BigBlueTerm437NerdFontPropo-Regular.ttf"
  font "BigBlueTermPlusNerdFont-Regular.ttf"
  font "BigBlueTermPlusNerdFontMono-Regular.ttf"
  font "BigBlueTermPlusNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
