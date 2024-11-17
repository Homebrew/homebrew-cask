cask "font-iosevka-ss01" do
  version "32.1.0"
  sha256 "2dbca59c48888d5c2a35e0eeeeb3319c50aeadca830315595a199694ad717fee"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
