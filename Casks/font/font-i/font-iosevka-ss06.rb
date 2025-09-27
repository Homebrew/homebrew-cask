cask "font-iosevka-ss06" do
  version "33.3.1"
  sha256 "f0722c9f0914887453e5974b7977ec89013a6e812f4b68c96a8b0c9028da07a5"

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
