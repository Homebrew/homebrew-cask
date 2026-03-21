cask "font-protest-revolution" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/protestrevolution/ProtestRevolution-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Protest Revolution"
  homepage "https://fonts.google.com/specimen/Protest+Revolution"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Protest Revolution",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ProtestRevolution-Regular.ttf"

  # No zap stanza required
end
