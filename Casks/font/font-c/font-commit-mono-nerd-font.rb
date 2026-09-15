cask "font-commit-mono-nerd-font" do
  version "3.5.1"
  sha256 "7ee1e16909f0fd05cee30db4299753c33a6134c418c828d6d8523d246ee3f836"

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
