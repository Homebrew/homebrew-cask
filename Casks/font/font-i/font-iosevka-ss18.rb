cask "font-iosevka-ss18" do
  version "33.2.8"
  sha256 "77867723253326a9bb0d5515971a08b11c977fca71fcea16b92691648d712abc"

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
