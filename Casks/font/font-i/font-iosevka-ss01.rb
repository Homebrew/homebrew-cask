cask "font-iosevka-ss01" do
  version "34.8.0"
  sha256 "43a58b72608c9f97f1d8d6f5a32395e9f9fb8b6c560695a2f9660994bc4a9470"

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
