cask "font-iosevka-ss14" do
  version "33.3.0"
  sha256 "34e71ae922170a97360a7dd6ced5c3330f21eb64acef08ce476fe9c999020964"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
