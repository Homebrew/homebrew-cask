cask "font-iosevka-ss01" do
  version "31.7.1"
  sha256 "fae919118ed5de08df7d5df768ad38285afac9a4b5efc6e20f4cced684d2a4e8"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
