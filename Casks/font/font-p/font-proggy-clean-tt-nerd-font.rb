cask "font-proggy-clean-tt-nerd-font" do
  version "3.3.0"
  sha256 "375625156cfdd330aac49b7dbbbb3023f49339ffa17e596026741ef690068be2"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/ProggyClean.zip"
  name "ProggyClean Nerd Font families (ProggyCleanTT)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "ProggyCleanCENerdFont-Regular.ttf"
  font "ProggyCleanCENerdFontMono-Regular.ttf"
  font "ProggyCleanCENerdFontPropo-Regular.ttf"
  font "ProggyCleanNerdFont-Regular.ttf"
  font "ProggyCleanNerdFontMono-Regular.ttf"
  font "ProggyCleanNerdFontPropo-Regular.ttf"
  font "ProggyCleanSZNerdFont-Regular.ttf"
  font "ProggyCleanSZNerdFontMono-Regular.ttf"
  font "ProggyCleanSZNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
