cask "font-iosevka-ss05" do
  version "32.0.1"
  sha256 "f74c67a310f52f99a6c8d17803a000149ddc37043d9921a2f549c13633726032"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
