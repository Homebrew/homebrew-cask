cask "font-iosevka-ss05" do
  version "33.2.1"
  sha256 "28f5e7909717474cdaa4481e2411c86b570c7a5abeaaa756317d432fe7b6b2a5"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
