cask "font-iosevka-ss18" do
  version "33.0.1"
  sha256 "daae5bfabdc77faa538b0b9abda2421f07826b675dc1651a3af40a903c50146b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
