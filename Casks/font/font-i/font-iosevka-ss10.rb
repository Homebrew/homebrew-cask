cask "font-iosevka-ss10" do
  version "33.2.1"
  sha256 "45bb313bc352534a9be21d7409a0e0b65e0351326ecbae54d76bff0d0365d0c3"

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
