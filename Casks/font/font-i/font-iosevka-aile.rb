cask "font-iosevka-aile" do
  version "33.2.4"
  sha256 "b377ac7f2c75e72a50b36e4147ca39794aa705052c9f79245d00fcbf84ca0cac"

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
