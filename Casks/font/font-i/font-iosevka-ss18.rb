cask "font-iosevka-ss18" do
  version "31.8.0"
  sha256 "a65acbb6e5a2ef763f42c032ba11acc03475641fdcf675cb70e48d085e509c13"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
