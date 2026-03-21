cask "font-arizonia" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/arizonia/Arizonia-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Arizonia"
  homepage "https://fonts.google.com/specimen/Arizonia"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Arizonia",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Arizonia-Regular.ttf"

  # No zap stanza required
end
