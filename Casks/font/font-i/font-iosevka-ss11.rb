cask "font-iosevka-ss11" do
  version "32.2.0"
  sha256 "27174082a971eac9c85c1414db626b832a99461e8044bd41bf4e0bc003a34dc0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
