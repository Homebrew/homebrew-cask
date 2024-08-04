cask "font-iosevka-ss18" do
  version "31.1.0"
  sha256 "e52488e2331917e6ba22be3d86297a8c0cb42ccd628c48bc4f35834716b237ef"

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
