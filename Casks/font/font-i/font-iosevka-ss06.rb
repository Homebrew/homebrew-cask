cask "font-iosevka-ss06" do
  version "33.2.2"
  sha256 "4dfcd9f22982d1d6d1b1a48377216066e765a4974b77c067d404b3e6895d66a7"

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
