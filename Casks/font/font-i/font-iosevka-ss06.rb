cask "font-iosevka-ss06" do
  version "31.9.0"
  sha256 "4317d714220f7b641eec575867b023cace613ed5f2f8c0261823262da89edc56"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
