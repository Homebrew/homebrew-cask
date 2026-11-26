cask "font-iosevka-ss05" do
  version "34.9.2"
  sha256 "f25a864ad3bb4669b0a71d7749b3980870f87c3187c161664f3fe96ca02f3afe"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  zap :not_required
end
