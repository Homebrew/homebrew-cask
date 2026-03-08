cask "font-iosevka-aile" do
  version "34.2.1"
  sha256 "f8d0fb2af7aae9cd9e1c8bda0b299720b1f7d560e84b513ba8a3ce793edfe5f6"

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
