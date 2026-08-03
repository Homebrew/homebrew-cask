cask "font-inconsolata-nerd-font" do
  version "3.5.0"
  sha256 "dc4a72c9da3e92ef7fbf288640ee0d59aac5f3984cf601b6bb1ad6b7ea496b30"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Inconsolata.tar.xz"
  name "Inconsolata Nerd Font (Inconsolata)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "InconsolataNerdFont-Bold.ttf"
  font "InconsolataNerdFont-Regular.ttf"
  font "InconsolataNerdFontMono-Bold.ttf"
  font "InconsolataNerdFontMono-Regular.ttf"
  font "InconsolataNerdFontPropo-Bold.ttf"
  font "InconsolataNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
