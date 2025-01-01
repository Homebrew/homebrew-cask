cask "font-iosevka-aile" do
  version "32.3.1"
  sha256 "2b22db991956ab29453a6a2ebc9497a1cdf5254e3ab468c3a89f6d555a46527e"

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
