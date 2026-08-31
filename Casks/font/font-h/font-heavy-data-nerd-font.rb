cask "font-heavy-data-nerd-font" do
  version "3.5.1"
  sha256 "5137500fe224d8f7876557352136c0c9eef94b371ccea78cdee6aa0160e2e254"

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
