cask "font-iosevka-ss02" do
  version "31.4.0"
  sha256 "e1d90f327efc6d62b4ede1c699bbaed9ae85ab8418d0d93db69d32c47ebf6e3e"

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
