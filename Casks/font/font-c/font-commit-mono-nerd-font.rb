cask "font-commit-mono-nerd-font" do
  version "3.3.0"
  sha256 "f2055ed25f58d20644028f1648feb74cb21a0702b7a06a2f725a3caa7045b32f"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/CommitMono.zip"
  name "CommitMono Nerd Font (Commit Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

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
