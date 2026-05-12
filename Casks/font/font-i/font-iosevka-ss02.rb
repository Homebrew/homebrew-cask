cask "font-iosevka-ss02" do
  version "34.5.0"
  sha256 "2834410772e1ecdaa6a4c7900a104cb8069377677a72f5993aafd83f7eed4310"

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
