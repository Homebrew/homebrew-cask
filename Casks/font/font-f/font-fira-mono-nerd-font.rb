cask "font-fira-mono-nerd-font" do
  version "3.3.0"
  sha256 "09046ea03d7302305253c93459252d5e9adc10c4581b70dfe19f7fea3d672a4a"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/FiraMono.zip"
  name "FiraMono Nerd Font (Fira)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "FiraMonoNerdFont-Bold.otf"
  font "FiraMonoNerdFont-Medium.otf"
  font "FiraMonoNerdFont-Regular.otf"
  font "FiraMonoNerdFontMono-Bold.otf"
  font "FiraMonoNerdFontMono-Medium.otf"
  font "FiraMonoNerdFontMono-Regular.otf"
  font "FiraMonoNerdFontPropo-Bold.otf"
  font "FiraMonoNerdFontPropo-Medium.otf"
  font "FiraMonoNerdFontPropo-Regular.otf"

  # No zap stanza required
end
