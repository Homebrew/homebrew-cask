cask "font-iosevka-ss06" do
  version "33.2.0"
  sha256 "f27e3c0255dc58d58aeecb0e18d1934bccaac02a5c7624b1c207d922c9d8f54f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
