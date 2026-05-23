cask "font-iosevka-ss18" do
  version "34.6.0"
  sha256 "2b1b569af7b3df2f47766b7b68639fdfab529c3c8d43851bc362847caa0cba8d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
