cask "font-iosevka-ss12" do
  version "34.6.2"
  sha256 "55e4036a234ee8fbfcfc12ad27009c30afe0e11a6602e19a218b37051b7d9068"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
