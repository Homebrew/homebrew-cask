cask "font-iosevka-ss07" do
  version "33.2.5"
  sha256 "50d35b27bf15ee80e65a9269d5cfef0cb7b925e52055bafb47c4604e7766e224"

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
