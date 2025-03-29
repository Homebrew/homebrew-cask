cask "font-iosevka-ss14" do
  version "33.2.0"
  sha256 "5dcbe364ead93ee10ccd5bd154aa380cf41511f667aceb1db8c40be0664cbdb7"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
