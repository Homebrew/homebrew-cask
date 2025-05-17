cask "font-iosevka-ss12" do
  version "33.2.3"
  sha256 "a239e632b19289e054e4d1062566c3d7befb35d75e6955441a788dced906242a"

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
