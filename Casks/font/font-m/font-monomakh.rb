cask "font-monomakh" do
  version "1.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/monomakh/Monomakh-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Monomakh"
  homepage "https://fonts.google.com/specimen/Monomakh"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Monomakh",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Monomakh-Regular.ttf"

  # No zap stanza required
end
