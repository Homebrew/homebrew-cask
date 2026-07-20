cask "font-iosevka-ss05" do
  version "34.7.0"
  sha256 "94a8298abba875f35b29efac23730395d0b84c29596c1566fc00837eee8eb227"

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
