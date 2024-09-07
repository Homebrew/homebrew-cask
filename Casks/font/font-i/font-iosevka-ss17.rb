cask "font-iosevka-ss17" do
  version "31.6.0"
  sha256 "69f31f1a307d920d417057788fb63fdb5aec6a8f845040228b23b69f212e0f0e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
