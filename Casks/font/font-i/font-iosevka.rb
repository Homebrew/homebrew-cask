cask "font-iosevka" do
  version "33.3.3"
  sha256 "0c909484605ca8657af180befb4170a8ee0eae91b4cea92a3a63cbb824e28e8d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  # No zap stanza required
end
