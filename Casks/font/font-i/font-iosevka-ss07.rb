cask "font-iosevka-ss07" do
  version "33.3.0"
  sha256 "fc3e5f95e88174d1a3ebbc64a58d56af1c2cca568d9185758bc8af72df463766"

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
