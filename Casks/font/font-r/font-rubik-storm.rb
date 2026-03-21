cask "font-rubik-storm" do
  version "2.201"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikstorm/RubikStorm-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Storm"
  homepage "https://fonts.google.com/specimen/Rubik+Storm"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Storm",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikStorm-Regular.ttf"

  # No zap stanza required
end
