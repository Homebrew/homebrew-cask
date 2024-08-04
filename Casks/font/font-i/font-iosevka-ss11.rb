cask "font-iosevka-ss11" do
  version "31.1.0"
  sha256 "d8514b3595a109b4f0d1ab51d794494955d0f766b17b793b43a4d925cdb08b3d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
