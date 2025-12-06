cask "font-iosevka-ss14" do
  version "33.3.6"
  sha256 "89f1c423ae8f155aed3a3b2883bd703bae12f860cf1cb937d9930424d288aab0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
