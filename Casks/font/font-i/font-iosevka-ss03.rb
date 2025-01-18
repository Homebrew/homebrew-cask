cask "font-iosevka-ss03" do
  version "32.4.0"
  sha256 "2df28066e9a70747b8be0073095a5363f69d689796a17a9f33106d789d9fd9ae"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
