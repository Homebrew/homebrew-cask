cask "font-iosevka-ss05" do
  version "33.2.7"
  sha256 "af5842b56b423aa01ad7819e4a5a3e7df5cd5bcfbdfee6422c1f7fba4c0ab562"

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
