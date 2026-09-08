cask "font-martian-mono-nerd-font" do
  version "3.5.1"
  sha256 "804a5a458856725d45a03d96a778349e8c3c9a4a45f5df023f294e196fbe88f2"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/MartianMono.tar.xz"
  name "MartianMono Nerd Font (MartianMono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

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
