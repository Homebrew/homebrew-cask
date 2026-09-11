cask "font-iosevka-ss04" do
  version "34.8.1"
  sha256 "12a2fc5b8afe8599fbd5ec2fd977257cbb2f9b49447b24d28f0a3176fca02539"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
