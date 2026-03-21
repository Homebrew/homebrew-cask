cask "font-passions-conflict" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/passionsconflict/PassionsConflict-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Passions Conflict"
  homepage "https://fonts.google.com/specimen/Passions+Conflict"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Passions Conflict",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PassionsConflict-Regular.ttf"

  # No zap stanza required
end
