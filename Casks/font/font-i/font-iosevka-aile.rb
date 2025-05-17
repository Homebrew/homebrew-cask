cask "font-iosevka-aile" do
  version "33.2.3"
  sha256 "300f6192a60ed99ade2e9699e5d5e1c6705d68007f0f20a13a6ee7a23f240f7c"

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
