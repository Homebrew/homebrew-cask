cask "font-iosevka-ss08" do
  version "34.2.1"
  sha256 "fc5f51bb85abcc8a2571832db5c217d6bf30dc1806e742b6cdb063914846923a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
