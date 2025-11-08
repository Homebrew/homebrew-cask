cask "font-iosevka-aile" do
  version "33.3.4"
  sha256 "e678876033b8702444564512f71c655f271f534f19d9b9b7d6994800c28e200a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaAile-#{version}.zip"
  name "Iosevka Aile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaAile.ttc"

  # No zap stanza required
end
