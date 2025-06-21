cask "font-d2coding-nerd-font" do
  version "3.4.0"
  sha256 "dd9aaf8c3b01a16e4e454e3dbc0542a8679c80c53299ea5a23f0ce7f53561345"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/D2Coding.zip"
  name "D2CodingLigature Nerd Font (D2Coding)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "D2CodingLigatureNerdFont-Bold.ttf"
  font "D2CodingLigatureNerdFont-Regular.ttf"
  font "D2CodingLigatureNerdFontMono-Bold.ttf"
  font "D2CodingLigatureNerdFontMono-Regular.ttf"
  font "D2CodingLigatureNerdFontPropo-Bold.ttf"
  font "D2CodingLigatureNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
