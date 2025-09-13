cask "font-iosevka-ss13" do
  version "33.3.0"
  sha256 "83816be345be8cbd69556df5332aac158fc40cfe48ae1ed0f348074b84cdc8d3"

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
