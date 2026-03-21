cask "font-graduate" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/graduate/Graduate-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Graduate"
  homepage "https://fonts.google.com/specimen/Graduate"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Graduate",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Graduate-Regular.ttf"

  # No zap stanza required
end
