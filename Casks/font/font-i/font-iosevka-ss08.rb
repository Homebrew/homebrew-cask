cask "font-iosevka-ss08" do
  version "34.0.0"
  sha256 "4530081558969d2a436ca3d1e71b82891c73da6143ae030fb689f4ad8d7e119f"

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
