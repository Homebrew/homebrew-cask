cask "font-iosevka-ss05" do
  version "31.9.0"
  sha256 "28ef94736da09fcd43c9fa15dd2df4de194d3f48601cb2eac0f648458da794a8"

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
