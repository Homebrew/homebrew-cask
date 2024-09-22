cask "font-iosevka-ss16" do
  version "31.7.1"
  sha256 "80697d8c4218e35e0071231cc66fbddb4dcf7d17a3d825ad6f477854157c693d"

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
