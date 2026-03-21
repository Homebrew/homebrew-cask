cask "font-protest-riot" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/protestriot/ProtestRiot-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Protest Riot"
  homepage "https://fonts.google.com/specimen/Protest+Riot"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Protest Riot",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ProtestRiot-Regular.ttf"

  # No zap stanza required
end
