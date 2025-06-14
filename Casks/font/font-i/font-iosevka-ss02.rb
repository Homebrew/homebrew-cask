cask "font-iosevka-ss02" do
  version "33.2.5"
  sha256 "c0d5b927bec017c389e9de1808b2cb94250ee7146061042a3a2a4da11d140238"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
