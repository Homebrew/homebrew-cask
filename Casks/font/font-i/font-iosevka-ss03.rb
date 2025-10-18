cask "font-iosevka-ss03" do
  version "33.3.2"
  sha256 "dba0cb8fa387924adc77e44e27017977dda4a99868b95e0d70e027f913b88beb"

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
