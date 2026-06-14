cask "font-iosevka-ss18" do
  version "34.6.3"
  sha256 "5997cbbbd22bd017063b91dcfdc9d317e11d3fe2ba69ff8d82bab16d42920c5b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
