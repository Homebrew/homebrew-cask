cask "font-lemon" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lemon/Lemon-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lemon"
  homepage "https://fonts.google.com/specimen/Lemon"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lemon",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Lemon-Regular.ttf"

  # No zap stanza required
end
