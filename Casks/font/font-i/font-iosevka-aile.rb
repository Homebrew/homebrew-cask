cask "font-iosevka-aile" do
  version "34.7.0"
  sha256 "c4cb3c20cce151e805813a595175242b9f67562f98cd7d68e298af9e26830a25"

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
