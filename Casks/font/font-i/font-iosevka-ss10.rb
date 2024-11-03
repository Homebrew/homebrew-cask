cask "font-iosevka-ss10" do
  version "32.0.1"
  sha256 "9509d8ceded85e8b143d43e933950d0971f9fd9172e347e039b69c68beee8184"

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
