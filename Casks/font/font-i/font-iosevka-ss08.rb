cask "font-iosevka-ss08" do
  version "31.1.0"
  sha256 "4bb04f0e0634ccb47f746507ff04fddc66a529f0dbf718f80476213c192a3df9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
