cask "font-habibi" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/habibi/Habibi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Habibi"
  homepage "https://fonts.google.com/specimen/Habibi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Habibi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Habibi-Regular.ttf"

  # No zap stanza required
end
