cask "font-adwaita-mono-nerd-font" do
  version "3.5.1"
  sha256 "409118887ec166a2342c184ade6734faf5d236a097742cb7085ff42826a1dd94"

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
