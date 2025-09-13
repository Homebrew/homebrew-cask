cask "font-iosevka-ss10" do
  version "33.3.0"
  sha256 "561a292be353b5d15f6a0ab27011ae644d7bab8f116cf87b8c953d1841fe7a68"

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
