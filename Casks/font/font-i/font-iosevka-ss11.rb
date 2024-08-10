cask "font-iosevka-ss11" do
  version "31.2.0"
  sha256 "39123803d0f24ea09f239acc57e169ef2b14a02f076a3eebaa12ab6ecc31cb41"

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
