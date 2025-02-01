cask "font-iosevka-ss08" do
  version "32.5.0"
  sha256 "fc4165e203d2cc2c261b4e57b17d7f43fa38e97e0dab02e6087994470982cf16"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
