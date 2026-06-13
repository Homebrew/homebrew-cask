cask "font-iosevka-aile" do
  version "34.6.2"
  sha256 "9fccd3069a3c4d1973279d297686d533438459c4335236096dac001c60b61145"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaAile-#{version}.zip"
  name "Iosevka Aile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaAile.ttc"

  # No zap stanza required
end
