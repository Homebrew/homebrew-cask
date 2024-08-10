cask "font-iosevka" do
  version "31.2.0"
  sha256 "ea4131e7d5bbbfebf9b982f154c8dc7b63739db79d1df4f1ba6637b4d6df5bc8"

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
