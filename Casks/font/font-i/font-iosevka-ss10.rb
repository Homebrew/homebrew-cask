cask "font-iosevka-ss10" do
  version "32.3.1"
  sha256 "d3db4e1333abc4d56d8e1f3d61a3756f124b79233d5cac5953c9d17b3b6d0517"

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
