cask "font-iosevka-ss02" do
  version "34.6.1"
  sha256 "e608aa8e117551445a48e5163bc186c9069bed106fb92a1b02205b61b895fb63"

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
