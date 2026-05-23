cask "font-iosevka-ss04" do
  version "34.6.0"
  sha256 "462ae1d937235505fe0a8d1ba276d68a05cca7676f5f9bb219e212a3f696db8e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
