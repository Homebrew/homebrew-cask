cask "font-iosevka-ss10" do
  version "32.2.0"
  sha256 "40478d7cc3e92e997956bd64efa13a050af386889d641f3397f3746b2d2d6625"

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
