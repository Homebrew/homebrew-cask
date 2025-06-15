cask "font-anonymice-nerd-font" do
  version "3.4.0"
  sha256 "d0f830d45d81471989c29de9b76618be4a01949f1b993f73b72a219f0e5ae684"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/AnonymousPro.zip"
  name "AnonymicePro Nerd Font (Anonymous Pro)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  no_autobump! because: :bumped_by_upstream

  livecheck do
    url :url
    strategy :github_latest
  end

  font "AnonymiceProNerdFont-Bold.ttf"
  font "AnonymiceProNerdFont-BoldItalic.ttf"
  font "AnonymiceProNerdFont-Italic.ttf"
  font "AnonymiceProNerdFont-Regular.ttf"
  font "AnonymiceProNerdFontMono-Bold.ttf"
  font "AnonymiceProNerdFontMono-BoldItalic.ttf"
  font "AnonymiceProNerdFontMono-Italic.ttf"
  font "AnonymiceProNerdFontMono-Regular.ttf"
  font "AnonymiceProNerdFontPropo-Bold.ttf"
  font "AnonymiceProNerdFontPropo-BoldItalic.ttf"
  font "AnonymiceProNerdFontPropo-Italic.ttf"
  font "AnonymiceProNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
