cask "font-d2coding-nerd-font" do
  version "3.5.1"
  sha256 "acdc66f5df6e64a7e1d41f89930b163da5345cf45f7dd08e41a98da255002c95"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/D2Coding.tar.xz"
  name "D2KodingLigature Nerd Font (D2Coding)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "D2KodingLigatureNerdFont-Bold.ttf"
  font "D2KodingLigatureNerdFont-Regular.ttf"
  font "D2KodingLigatureNerdFontMono-Bold.ttf"
  font "D2KodingLigatureNerdFontMono-Regular.ttf"
  font "D2KodingLigatureNerdFontPropo-Bold.ttf"
  font "D2KodingLigatureNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
