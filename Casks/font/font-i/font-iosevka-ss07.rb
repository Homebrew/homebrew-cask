cask "font-iosevka-ss07" do
  version "34.8.0"
  sha256 "050234ff3f87959b9a1ec15e76922701d24756b9e526dfe56add35930019cd13"

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
