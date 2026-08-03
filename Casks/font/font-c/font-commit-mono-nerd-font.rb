cask "font-commit-mono-nerd-font" do
  version "3.5.0"
  sha256 "35f8b7fb2279f790201433e71395e9225c2ef70a184eef75de8dbe53ea389239"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/CommitMono.tar.xz"
  name "CommitMono Nerd Font (Commit Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "CommitMonoNerdFont-Bold.otf"
  font "CommitMonoNerdFont-BoldItalic.otf"
  font "CommitMonoNerdFont-Italic.otf"
  font "CommitMonoNerdFont-Regular.otf"
  font "CommitMonoNerdFontMono-Bold.otf"
  font "CommitMonoNerdFontMono-BoldItalic.otf"
  font "CommitMonoNerdFontMono-Italic.otf"
  font "CommitMonoNerdFontMono-Regular.otf"
  font "CommitMonoNerdFontPropo-Bold.otf"
  font "CommitMonoNerdFontPropo-BoldItalic.otf"
  font "CommitMonoNerdFontPropo-Italic.otf"
  font "CommitMonoNerdFontPropo-Regular.otf"

  # No zap stanza required
end
