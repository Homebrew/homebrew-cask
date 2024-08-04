cask "font-iosevka-ss02" do
  version "31.1.0"
  sha256 "c39aa8fc11b3946729b2b93be65b99822174fee60b58341e0e668db7fad6452e"

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
