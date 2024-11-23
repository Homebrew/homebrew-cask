cask "font-comic-shanns-mono-nerd-font" do
  version "3.3.0"
  sha256 "6076397b5b176c6e16423bea599e1a4f7b24932eeda9d253e68912fb14b6f767"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/ComicShannsMono.zip"
  name "ComicShannsMono Nerd Font (Comic Shanns Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "ComicShannsMonoNerdFont-Bold.otf"
  font "ComicShannsMonoNerdFont-Regular.otf"
  font "ComicShannsMonoNerdFontMono-Bold.otf"
  font "ComicShannsMonoNerdFontMono-Regular.otf"
  font "ComicShannsMonoNerdFontPropo-Bold.otf"
  font "ComicShannsMonoNerdFontPropo-Regular.otf"

  # No zap stanza required
end
