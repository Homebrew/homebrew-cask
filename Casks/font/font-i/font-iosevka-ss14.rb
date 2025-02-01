cask "font-iosevka-ss14" do
  version "32.5.0"
  sha256 "9aed45f707b9cb43bf475c4fb89ba8bbbe8236ac9a31ee1e26432ffa65a1bdd5"

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
