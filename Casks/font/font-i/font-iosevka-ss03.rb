cask "font-iosevka-ss03" do
  version "31.5.0"
  sha256 "dc73cc4d0278d0d099bcfe92fb516edb9780b94e0e9d0093d467cdacba9928d6"

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
