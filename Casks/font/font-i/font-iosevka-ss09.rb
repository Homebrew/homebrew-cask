cask "font-iosevka-ss09" do
  version "34.2.1"
  sha256 "e640901c4f35dcc9814e9f68c7a7c173b9e39f672b5fd2ca47af4e4e72faa86a"

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
