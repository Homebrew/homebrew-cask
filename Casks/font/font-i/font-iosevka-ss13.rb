cask "font-iosevka-ss13" do
  version "31.9.0"
  sha256 "5e5b2fbbb4506fd2606e95d60b20501b28a35acb10b33753cf39cc7493b32aaa"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
