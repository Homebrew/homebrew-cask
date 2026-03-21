cask "font-rubik-doodle-shadow" do
  version "2.201"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikdoodleshadow/RubikDoodleShadow-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Doodle Shadow"
  homepage "https://fonts.google.com/specimen/Rubik+Doodle+Shadow"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Doodle Shadow",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikDoodleShadow-Regular.ttf"

  # No zap stanza required
end
