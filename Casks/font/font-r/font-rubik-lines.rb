cask "font-rubik-lines" do
  version "2.201"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubiklines/RubikLines-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Lines"
  homepage "https://fonts.google.com/specimen/Rubik+Lines"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Lines",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikLines-Regular.ttf"

  # No zap stanza required
end
