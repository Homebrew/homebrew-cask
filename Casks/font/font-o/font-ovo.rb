cask "font-ovo" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ovo/Ovo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ovo"
  homepage "https://fonts.google.com/specimen/Ovo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ovo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ovo-Regular.ttf"

  # No zap stanza required
end
