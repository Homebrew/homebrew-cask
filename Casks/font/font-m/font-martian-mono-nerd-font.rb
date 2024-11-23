cask "font-martian-mono-nerd-font" do
  version "3.3.0"
  sha256 "706e539ce2a3019b306e4f90364b8ff57c7076c8e2f160a486028e4bb3f243b2"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/MartianMono.zip"
  name "MartianMono Nerd Font (MartianMono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "MartianMonoNerdFont-Bold.ttf"
  font "MartianMonoNerdFont-CondensedBold.ttf"
  font "MartianMonoNerdFont-CondensedMedium.ttf"
  font "MartianMonoNerdFont-CondensedRegular.ttf"
  font "MartianMonoNerdFont-Medium.ttf"
  font "MartianMonoNerdFont-Regular.ttf"
  font "MartianMonoNerdFontMono-Bold.ttf"
  font "MartianMonoNerdFontMono-CondensedBold.ttf"
  font "MartianMonoNerdFontMono-CondensedMedium.ttf"
  font "MartianMonoNerdFontMono-CondensedRegular.ttf"
  font "MartianMonoNerdFontMono-Medium.ttf"
  font "MartianMonoNerdFontMono-Regular.ttf"
  font "MartianMonoNerdFontPropo-Bold.ttf"
  font "MartianMonoNerdFontPropo-CondensedBold.ttf"
  font "MartianMonoNerdFontPropo-CondensedMedium.ttf"
  font "MartianMonoNerdFontPropo-CondensedRegular.ttf"
  font "MartianMonoNerdFontPropo-Medium.ttf"
  font "MartianMonoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
