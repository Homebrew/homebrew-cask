cask "font-heavy-data-nerd-font" do
  version "3.5.0"
  sha256 "7529d1bafdff0c9d5105cb9e2982c7f83e93f52053accc881460c69930c1507b"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/HeavyData.tar.xz"
  name "HeavyData Nerd Font (Heavy Data)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "HeavyDataNerdFont-Regular.ttf"
  font "HeavyDataNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
