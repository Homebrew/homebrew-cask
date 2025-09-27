cask "font-iosevka-ss16" do
  version "33.3.1"
  sha256 "cee72196c93aa3e7c549e0d2eb1cbc7b0109218a355044ba194c93ea4cf9d2e4"

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
