cask "font-rubik-beastly" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikbeastly/RubikBeastly-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Beastly"
  homepage "https://fonts.google.com/specimen/Rubik+Beastly"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Beastly",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikBeastly-Regular.ttf"

  # No zap stanza required
end
