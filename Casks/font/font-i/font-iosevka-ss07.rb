cask "font-iosevka-ss07" do
  version "32.2.1"
  sha256 "000dc74ed94f41847fde532e699421a7da169e5c90f813b865f4764024a05d57"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
