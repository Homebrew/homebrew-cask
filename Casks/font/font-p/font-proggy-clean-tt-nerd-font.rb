cask "font-proggy-clean-tt-nerd-font" do
  version "3.5.1"
  sha256 "b7c0b6d558f92764fa26481d557ef867e6608e932d951a2aa8705b9fc6a50fd6"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/ProggyClean.tar.xz"
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
