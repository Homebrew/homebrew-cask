cask "font-iosevka-ss09" do
  version "34.9.0"
  sha256 "7e04bb03fe72c4687db56d9979ab95c08a43c1e8905be6767ce2e6d44338d75f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
