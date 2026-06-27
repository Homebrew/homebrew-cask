cask "font-iosevka-ss14" do
  version "34.7.0"
  sha256 "d24d80a82455ab94295b06bb59f8571b0b4fba70b56881e5a194c77c9f9208ee"

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
