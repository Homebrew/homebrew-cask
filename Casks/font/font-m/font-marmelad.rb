cask "font-marmelad" do
  version "1.110"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/marmelad/Marmelad-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Marmelad"
  homepage "https://fonts.google.com/specimen/Marmelad"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Marmelad",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Marmelad-Regular.ttf"

  # No zap stanza required
end
