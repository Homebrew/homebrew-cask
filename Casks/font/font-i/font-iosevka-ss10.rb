cask "font-iosevka-ss10" do
  version "31.7.0"
  sha256 "600e8a6be081eba8d97e7ed3ab48e6488e158ede9af68a1c25375f8d58ba9d84"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
