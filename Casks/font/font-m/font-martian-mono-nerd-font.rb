cask "font-martian-mono-nerd-font" do
  version "3.2.1"
  sha256 "a0bb5ab838bb2dcbcc2a7824e6a73505e8dc8f95f48183e056d82790108c32ea"

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
