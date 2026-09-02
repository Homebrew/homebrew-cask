cask "font-go-mono-nerd-font" do
  version "3.5.1"
  sha256 "d993c556cf0e7c4b2455628063a5adb441b3517a297783185c262d77900d70dd"

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
