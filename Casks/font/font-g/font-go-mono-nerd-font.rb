cask "font-go-mono-nerd-font" do
  version "3.5.0"
  sha256 "df35a387d47558fd2fe2fb67779077721f841babaf4849aaa9e6df36c870310c"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Go-Mono.tar.xz"
  name "GoMono Nerd Font (Go Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "GoMonoNerdFont-Bold.ttf"
  font "GoMonoNerdFont-BoldItalic.ttf"
  font "GoMonoNerdFont-Italic.ttf"
  font "GoMonoNerdFont-Regular.ttf"
  font "GoMonoNerdFontMono-Bold.ttf"
  font "GoMonoNerdFontMono-BoldItalic.ttf"
  font "GoMonoNerdFontMono-Italic.ttf"
  font "GoMonoNerdFontMono-Regular.ttf"
  font "GoMonoNerdFontPropo-Bold.ttf"
  font "GoMonoNerdFontPropo-BoldItalic.ttf"
  font "GoMonoNerdFontPropo-Italic.ttf"
  font "GoMonoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
