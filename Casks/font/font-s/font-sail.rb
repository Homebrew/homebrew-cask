cask "font-sail" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sail/Sail-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sail"
  homepage "https://fonts.google.com/specimen/Sail"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sail",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sail-Regular.ttf"

  # No zap stanza required
end
