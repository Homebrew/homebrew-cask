cask "font-iosevka-ss16" do
  version "32.4.0"
  sha256 "de5d7d17f5cdfe0c6f008cbafc768c5cbe4863be937477b5957f76eb6afae68f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
