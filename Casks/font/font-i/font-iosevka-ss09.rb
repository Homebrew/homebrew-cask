cask "font-iosevka-ss09" do
  version "34.8.0"
  sha256 "14a7ca5adcb0648890ed5e3a0cb07355f296a6e654d6f542f22db8edaf97ca54"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
