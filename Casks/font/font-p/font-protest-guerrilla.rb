cask "font-protest-guerrilla" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/protestguerrilla/ProtestGuerrilla-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Protest Guerrilla"
  homepage "https://fonts.google.com/specimen/Protest+Guerrilla"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Protest Guerrilla",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ProtestGuerrilla-Regular.ttf"

  # No zap stanza required
end
