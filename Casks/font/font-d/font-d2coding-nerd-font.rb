cask "font-d2coding-nerd-font" do
  version "3.5.0"
  sha256 "c1d4e7cbee20b9e55d2481762bbb8413124fda224cee26863b805fe2f863aaec"

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
