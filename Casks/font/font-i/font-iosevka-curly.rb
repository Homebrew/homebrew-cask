cask "font-iosevka-curly" do
  version "33.3.4"
  sha256 "da329da5460c7adcc8ff9f37bc0df300c45072984cfeb0869f00b81bfabb10e8"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurly-#{version}.zip"
  name "Iosevka Curly"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurly.ttc"

  # No zap stanza required
end
