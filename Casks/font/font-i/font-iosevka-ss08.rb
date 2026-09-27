cask "font-iosevka-ss08" do
  version "34.9.0"
  sha256 "8f6121c1e1251d1d7828ee24b2aaa99bf0d6220ab02ef0271efe2aa291a47e14"

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
