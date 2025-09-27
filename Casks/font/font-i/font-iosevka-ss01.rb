cask "font-iosevka-ss01" do
  version "33.3.1"
  sha256 "ee6c1e84044d5bffd5e32f662cc357e629143d1437aafe9f1a3e9adacb0ddd1f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
