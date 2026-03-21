cask "font-mandali" do
  version "1.0.5"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mandali/Mandali-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mandali"
  homepage "https://fonts.google.com/specimen/Mandali"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mandali",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Mandali-Regular.ttf"

  # No zap stanza required
end
