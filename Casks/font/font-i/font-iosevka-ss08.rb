cask "font-iosevka-ss08" do
  version "31.2.0"
  sha256 "45369bae03edfe684b8f023328948bcbae76b42c8534a601faf6a68a25eb0fac"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
