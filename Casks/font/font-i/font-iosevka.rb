cask "font-iosevka" do
  version "31.7.1"
  sha256 "ba56a3fec0ee202bd6b68a0e591d06a1902f3f1ff8aa6f6f77d8c98ac1777f08"

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
