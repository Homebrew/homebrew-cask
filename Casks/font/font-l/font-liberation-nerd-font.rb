cask "font-liberation-nerd-font" do
  version "3.5.1"
  sha256 "1106e496fb06fdc9bfc472c51191b5336cb56250952593f806486196efb71a66"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/LiberationMono.tar.xz"
  name "Literation Nerd Font families (Liberation Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "LiterationMonoNerdFont-Bold.ttf"
  font "LiterationMonoNerdFont-BoldItalic.ttf"
  font "LiterationMonoNerdFont-Italic.ttf"
  font "LiterationMonoNerdFont-Regular.ttf"
  font "LiterationMonoNerdFontMono-Bold.ttf"
  font "LiterationMonoNerdFontMono-BoldItalic.ttf"
  font "LiterationMonoNerdFontMono-Italic.ttf"
  font "LiterationMonoNerdFontMono-Regular.ttf"
  font "LiterationMonoNerdFontPropo-Bold.ttf"
  font "LiterationMonoNerdFontPropo-BoldItalic.ttf"
  font "LiterationMonoNerdFontPropo-Italic.ttf"
  font "LiterationMonoNerdFontPropo-Regular.ttf"
  font "LiterationSansNerdFont-Bold.ttf"
  font "LiterationSansNerdFont-BoldItalic.ttf"
  font "LiterationSansNerdFont-Italic.ttf"
  font "LiterationSansNerdFont-Regular.ttf"
  font "LiterationSansNerdFontPropo-Bold.ttf"
  font "LiterationSansNerdFontPropo-BoldItalic.ttf"
  font "LiterationSansNerdFontPropo-Italic.ttf"
  font "LiterationSansNerdFontPropo-Regular.ttf"
  font "LiterationSerifNerdFont-Bold.ttf"
  font "LiterationSerifNerdFont-BoldItalic.ttf"
  font "LiterationSerifNerdFont-Italic.ttf"
  font "LiterationSerifNerdFont-Regular.ttf"
  font "LiterationSerifNerdFontPropo-Bold.ttf"
  font "LiterationSerifNerdFontPropo-BoldItalic.ttf"
  font "LiterationSerifNerdFontPropo-Italic.ttf"
  font "LiterationSerifNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
