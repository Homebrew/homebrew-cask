cask "font-iosevka-ss03" do
  version "33.2.3"
  sha256 "e67336059b2c14aa3d14643c6daf9564bd8e1c862182025ebf215da6e7e9dcde"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
