cask "font-iosevka-ss02" do
  version "31.3.0"
  sha256 "7384fa42f1695ea48a4aa22ebc82cb95ffb321e5685a5555f9bd56e5196628a6"

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
