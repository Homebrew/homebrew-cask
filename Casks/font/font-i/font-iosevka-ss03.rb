cask "font-iosevka-ss03" do
  version "32.3.1"
  sha256 "72214770c6763d79a5c55869e0d42a4085252fa1110ba8da1c7d789ba00750af"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
