cask "font-iosevka-ss02" do
  version "33.3.1"
  sha256 "4b84032bc4bb898ae3265fd148798ce95883df2536457d04677cd379bb85acdd"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end
