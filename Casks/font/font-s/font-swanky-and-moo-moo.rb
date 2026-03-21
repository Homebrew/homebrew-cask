cask "font-swanky-and-moo-moo" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/swankyandmoomoo/SwankyandMooMoo.ttf",
      verified: "github.com/google/fonts/"
  name "Swanky and Moo Moo"
  homepage "https://fonts.google.com/specimen/Swanky+and+Moo+Moo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Swanky and Moo Moo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SwankyandMooMoo.ttf"

  # No zap stanza required
end
