cask "font-iosevka" do
  version "32.0.1"
  sha256 "46751fddd9ea49ccb8c49c1f4d246fd2c78f4b68aa9850967db872cce783c0d3"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  # No zap stanza required
end
