cask "font-iosevka-ss09" do
  version "31.1.0"
  sha256 "b78bbadd729248dadf97643f2cf1180555c251bdf19eaf32516065a97ab0f9f9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
