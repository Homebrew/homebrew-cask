cask "font-iosevka-ss06" do
  version "31.5.0"
  sha256 "2114bf1b295062c6c15d96c377d627259641fe6cd8702335a76908399ccb6f43"

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
