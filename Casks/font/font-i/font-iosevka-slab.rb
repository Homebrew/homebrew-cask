cask "font-iosevka-slab" do
  version "34.9.0"
  sha256 "9d683be3aa2ae250b843dd5c25076b3270875406589dd84668b4ce0f3f2f8a9a"

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
