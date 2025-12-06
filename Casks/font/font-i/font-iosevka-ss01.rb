cask "font-iosevka-ss01" do
  version "33.3.6"
  sha256 "d0545c063f133a2c56628a4e3e5e196bfcaab9eb3ca7bb73403dba642a4a08f8"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
