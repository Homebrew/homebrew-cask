cask "font-aubrey" do
  version "1.102"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aubrey/Aubrey-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aubrey"
  homepage "https://fonts.google.com/specimen/Aubrey"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Aubrey",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Aubrey-Regular.ttf"

  # No zap stanza required
end
