cask "font-iosevka-etoile" do
  version "33.3.4"
  sha256 "340bb8bfd6eae6b3a6af7c8600e03e5950c05bb0673ba641d21b52b0ab94b009"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaEtoile-#{version}.zip"
  name "Iosevka Etoile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaEtoile.ttc"

  # No zap stanza required
end
