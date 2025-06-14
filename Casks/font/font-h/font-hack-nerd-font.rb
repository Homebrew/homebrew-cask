cask "font-hack-nerd-font" do
  version "3.4.0"
  sha256 "8ca33a60c791392d872b80d26c42f2bfa914a480f9eb2d7516d9f84373c36897"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Hack.zip"
  name "Hack Nerd Font (Hack)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  no_autobump! because: :bumped_by_upstream

  livecheck do
    url :url
    strategy :github_latest
  end

  font "HackNerdFont-Bold.ttf"
  font "HackNerdFont-BoldItalic.ttf"
  font "HackNerdFont-Italic.ttf"
  font "HackNerdFont-Regular.ttf"
  font "HackNerdFontMono-Bold.ttf"
  font "HackNerdFontMono-BoldItalic.ttf"
  font "HackNerdFontMono-Italic.ttf"
  font "HackNerdFontMono-Regular.ttf"
  font "HackNerdFontPropo-Bold.ttf"
  font "HackNerdFontPropo-BoldItalic.ttf"
  font "HackNerdFontPropo-Italic.ttf"
  font "HackNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
