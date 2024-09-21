cask "font-iosevka-ss02" do
  version "31.7.0"
  sha256 "2f6884a5e55c2b620daee3eab9c294d9a3c358b50f4a8f45de394f2cb2adfef8"

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
