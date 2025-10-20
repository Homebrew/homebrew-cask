cask "font-iosevka-ss17" do
  version "33.3.3"
  sha256 "df202c95552ea12ce68e928d2526a16746fba118cf66419214742f32813281a9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
