cask "font-iosevka-ss16" do
  version "33.2.5"
  sha256 "feb7cb79018bd52cac366ce0823514fbd4b6c49e6bc03d69986a689ae891fcb6"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
