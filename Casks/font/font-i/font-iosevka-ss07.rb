cask "font-iosevka-ss07" do
  version "33.2.6"
  sha256 "0b912234a0c90efa784235908476524e4470c70bc82411ed39a4b30b00eff0ec"

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
