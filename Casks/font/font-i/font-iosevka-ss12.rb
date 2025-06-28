cask "font-iosevka-ss12" do
  version "33.2.6"
  sha256 "0cb258493a2fb8d21eb734ad3681df8dd94fd80439580f85f64233b861a1c215"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
