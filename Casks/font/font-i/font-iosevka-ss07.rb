cask "font-iosevka-ss07" do
  version "33.1.0"
  sha256 "47496523423b286728bfdb794cd5f2c098132ce98a3eb72c74a3710709954d06"

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
