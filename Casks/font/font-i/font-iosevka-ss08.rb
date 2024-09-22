cask "font-iosevka-ss08" do
  version "31.7.1"
  sha256 "8387679dcfc74c2b5dd8b52334875f2969d3ac8d4d883d9e91f1aa3515a4ba7f"

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
