cask "font-alike" do
  version "1.301"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alike/Alike-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alike"
  homepage "https://fonts.google.com/specimen/Alike"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alike",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Alike-Regular.ttf"

  # No zap stanza required
end
