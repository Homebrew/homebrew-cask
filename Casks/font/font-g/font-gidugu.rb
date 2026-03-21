cask "font-gidugu" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gidugu/Gidugu-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gidugu"
  homepage "https://fonts.google.com/specimen/Gidugu"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gidugu",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gidugu-Regular.ttf"

  # No zap stanza required
end
