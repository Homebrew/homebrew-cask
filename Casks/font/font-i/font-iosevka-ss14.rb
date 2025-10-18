cask "font-iosevka-ss14" do
  version "33.3.2"
  sha256 "c0926a0a3fbbcfc021b42d67b4e1a31bcf285c8de780fe3c09dd766d5b4e2a52"

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
