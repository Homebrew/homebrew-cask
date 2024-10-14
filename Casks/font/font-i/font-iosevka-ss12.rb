cask "font-iosevka-ss12" do
  version "31.9.1"
  sha256 "338371fdff3cb9f5faf7b9e3f2a5863093e8a998f2d743eb45be113b5a956d1e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
