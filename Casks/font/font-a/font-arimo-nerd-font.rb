cask "font-arimo-nerd-font" do
  version "3.3.0"
  sha256 "f04e256bd134115866cf23440c68679fbdece4aa67c1ff34daff04f0c624b46f"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Arimo.zip"
  name "Arimo Nerd Font (Arimo)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "ArimoNerdFont-Bold.ttf"
  font "ArimoNerdFont-BoldItalic.ttf"
  font "ArimoNerdFont-Italic.ttf"
  font "ArimoNerdFont-Regular.ttf"
  font "ArimoNerdFontPropo-Bold.ttf"
  font "ArimoNerdFontPropo-BoldItalic.ttf"
  font "ArimoNerdFontPropo-Italic.ttf"
  font "ArimoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
