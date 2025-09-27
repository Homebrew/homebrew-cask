cask "font-iosevka-ss08" do
  version "33.3.1"
  sha256 "51b1797e6aa3566ee9198a53228160e07f4f5981ce727b845813bbcd6f883893"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
