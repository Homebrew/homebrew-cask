cask "font-proggy-clean-tt-nerd-font" do
  version "3.4.0"
  sha256 "d82f3a264b97ad0122ef29c442ce76c7f3157056854eb7ee4a41b2ce82f52be9"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/ProggyClean.zip"
  name "ProggyClean Nerd Font families (ProggyCleanTT)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

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
