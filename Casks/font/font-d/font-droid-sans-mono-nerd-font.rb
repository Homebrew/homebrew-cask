cask "font-droid-sans-mono-nerd-font" do
  version "3.5.1"
  sha256 "8e383ba1fde4e413996dcf47fbfaecbf544a7de940147a03af61fccd9ec9b8c4"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/DroidSansMono.tar.xz"
  name "DroidSansM Nerd Font (Droid Sans Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "DroidSansMNerdFont-Regular.otf"
  font "DroidSansMNerdFontMono-Regular.otf"
  font "DroidSansMNerdFontPropo-Regular.otf"

  # No zap stanza required
end
