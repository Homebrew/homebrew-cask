cask "font-iosevka-ss10" do
  version "32.3.0"
  sha256 "ea01c1f312a20d0a55691c86baf92571553381cdc1a3134c9a3cd36b43c1ba9a"

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
