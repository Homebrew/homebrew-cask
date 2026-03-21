cask "font-rubik-microbe" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikmicrobe/RubikMicrobe-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Microbe"
  homepage "https://fonts.google.com/specimen/Rubik+Microbe"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Microbe",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikMicrobe-Regular.ttf"

  # No zap stanza required
end
