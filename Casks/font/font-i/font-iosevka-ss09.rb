cask "font-iosevka-ss09" do
  version "32.5.0"
  sha256 "ec44b2cc2616982d185be606a21eaa4ccbaa5233cdf36a95c3ce8a3f4bd49ac4"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
