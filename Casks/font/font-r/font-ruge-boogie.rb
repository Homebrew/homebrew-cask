cask "font-ruge-boogie" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rugeboogie/RugeBoogie-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ruge Boogie"
  homepage "https://fonts.google.com/specimen/Ruge+Boogie"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ruge Boogie",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RugeBoogie-Regular.ttf"

  # No zap stanza required
end
