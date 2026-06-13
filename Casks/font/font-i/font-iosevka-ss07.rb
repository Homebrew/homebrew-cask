cask "font-iosevka-ss07" do
  version "34.6.2"
  sha256 "195392279d3b7a8241a29d18c4810d2f64f73c2829d3d186ac4db3fd07a328cc"

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
