cask "font-iosevka-ss13" do
  version "33.2.9"
  sha256 "ee462d5151a798ba7c7b93fa8d2fc873ad2f3d6337a91b5987e085c11dbbc5ae"

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
