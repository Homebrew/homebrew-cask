cask "font-alice" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alice/Alice-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alice"
  homepage "https://fonts.google.com/specimen/Alice"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alice",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Alice-Regular.ttf"

  # No zap stanza required
end
