cask "font-iosevka-ss10" do
  version "34.5.0"
  sha256 "0ae554bf8e71c5315b648902e0df8efa784859f54b2f222afb0980f84b376b30"

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
