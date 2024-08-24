cask "font-iosevka-ss03" do
  version "31.4.0"
  sha256 "d5f0faff25a10e0f10d92289fb35e16cff3f25f22f91445da2ef38cc28fa73a7"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
