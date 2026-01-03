cask "font-iosevka-ss10" do
  version "34.0.0"
  sha256 "b7c11a203c531575c3f95921a2a3c958f9459eba495cf3a12bc61791ab7b2e94"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
