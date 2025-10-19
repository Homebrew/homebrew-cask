cask "font-iosevka-ss09" do
  version "33.3.3"
  sha256 "9f081ac4bf76f1e4b1f2ac9f7d0b219a2656519ef98ce57633b5b7eb0efd10e0"

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
