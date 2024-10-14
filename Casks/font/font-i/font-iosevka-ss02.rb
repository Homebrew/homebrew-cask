cask "font-iosevka-ss02" do
  version "31.9.1"
  sha256 "b4f5e9c122ad4cedd062398009145f72f32636d586bc03ef599f7dd5dbc11c10"

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
