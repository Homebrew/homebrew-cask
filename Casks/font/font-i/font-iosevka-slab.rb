cask "font-iosevka-slab" do
  version "33.3.4"
  sha256 "e8deb64015ffe3d4d5cb80adb97fb5398398f8581d1ae3bf27726bd7621544ff"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSlab-#{version}.zip"
  name "Iosevka Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSlab.ttc"

  # No zap stanza required
end
