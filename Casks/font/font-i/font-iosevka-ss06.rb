cask "font-iosevka-ss06" do
  version "32.0.1"
  sha256 "cbfd7dc0c372612f444b1b8872693ab2571ed61029baf02b7eb51ef8895e8f28"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
