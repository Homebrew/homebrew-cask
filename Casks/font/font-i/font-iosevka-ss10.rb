cask "font-iosevka-ss10" do
  version "33.2.8"
  sha256 "2fe3f3a4dc1900dda0f9099ef3d04bf03689d40d786dcbd2da4fe54b86a1eebd"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
