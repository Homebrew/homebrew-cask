cask "font-adwaita-mono-nerd-font" do
  version "3.5.0"
  sha256 "0c50b1ec676232a0c357419c5ba55bf1bba886da66de77b4d028794f0922cd44"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/AdwaitaMono.tar.xz"
  name "AdwaitaMono Nerd Font (Adwaita Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "AdwaitaMonoNerdFont-Bold.ttf"
  font "AdwaitaMonoNerdFont-BoldItalic.ttf"
  font "AdwaitaMonoNerdFont-Italic.ttf"
  font "AdwaitaMonoNerdFont-Regular.ttf"
  font "AdwaitaMonoNerdFontMono-Bold.ttf"
  font "AdwaitaMonoNerdFontMono-BoldItalic.ttf"
  font "AdwaitaMonoNerdFontMono-Italic.ttf"
  font "AdwaitaMonoNerdFontMono-Regular.ttf"
  font "AdwaitaMonoNerdFontPropo-Bold.ttf"
  font "AdwaitaMonoNerdFontPropo-BoldItalic.ttf"
  font "AdwaitaMonoNerdFontPropo-Italic.ttf"
  font "AdwaitaMonoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
