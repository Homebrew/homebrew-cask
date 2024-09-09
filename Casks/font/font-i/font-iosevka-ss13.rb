cask "font-iosevka-ss13" do
  version "31.6.1"
  sha256 "c8cc5b3e48edbb1036798a96300aece00519ae8608fbe4de8ad3487161e18d23"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
