cask "font-iosevka-ss06" do
  version "34.5.0"
  sha256 "91f5478047f2f6e790e28b1394b975092cc8c8149eb66369cab223040bf22871"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
