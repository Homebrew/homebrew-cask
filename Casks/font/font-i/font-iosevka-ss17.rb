cask "font-iosevka-ss17" do
  version "34.6.1"
  sha256 "b8556eaafe79020555542f7cb75b49b42278061ca660505d9a05d317c64e4fa0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
