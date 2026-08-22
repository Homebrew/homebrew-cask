cask "font-iosevka-ss14" do
  version "34.8.1"
  sha256 "ba9be24308032e89da8158359cb0bc19586ced2790dba8dbee276effa53891f1"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
