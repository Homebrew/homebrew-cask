cask "font-oooh-baby" do
  version "1.011"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ooohbaby/OoohBaby-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Oooh Baby"
  homepage "https://fonts.google.com/specimen/Oooh+Baby"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Oooh Baby",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "OoohBaby-Regular.ttf"

  # No zap stanza required
end
