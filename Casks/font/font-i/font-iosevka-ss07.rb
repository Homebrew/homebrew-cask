cask "font-iosevka-ss07" do
  version "31.1.0"
  sha256 "a3ee54efea267ae69789cc756320c318f7c507918080e7d9ccaf6b4f1681efa2"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
