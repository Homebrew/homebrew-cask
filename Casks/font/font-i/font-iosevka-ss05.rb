cask "font-iosevka-ss05" do
  version "33.3.4"
  sha256 "c98d6da68d866ace51b09a5787207cb752ecd34c19f0733ee3ce8c964389a608"

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
