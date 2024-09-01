cask "font-iosevka-ss14" do
  version "31.5.0"
  sha256 "a66c36b365b0ac2459acb4ee38800bd1d307d570c10632324a56ed0ea2bff483"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
