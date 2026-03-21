cask "font-triodion" do
  version "1.202"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/triodion/Triodion-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Triodion"
  homepage "https://fonts.google.com/specimen/Triodion"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Triodion",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Triodion-Regular.ttf"

  # No zap stanza required
end
