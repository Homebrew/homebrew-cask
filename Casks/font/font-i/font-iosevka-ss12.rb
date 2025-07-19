cask "font-iosevka-ss12" do
  version "33.2.7"
  sha256 "ddd640fa509b2b4e1ae2a3346b534ade25ccbc35281e837df4fcda9fe2ef423b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
