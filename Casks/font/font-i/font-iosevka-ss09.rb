cask "font-iosevka-ss09" do
  version "34.5.0"
  sha256 "8dec334ca045a1f64df4454c39a46deaf61f248f55bf0cae7af15f4eeb7e202f"

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
