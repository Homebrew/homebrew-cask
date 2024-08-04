cask "font-iosevka-ss14" do
  version "31.1.0"
  sha256 "2785b8e8d6b64c3309c094cee5b9dac9a2190d7435edf91f4884dc14829af7c2"

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
