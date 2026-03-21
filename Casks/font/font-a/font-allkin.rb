cask "font-allkin" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/allkin/Allkin-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Allkin"
  homepage "https://fonts.google.com/specimen/Allkin"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Allkin",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Allkin-Regular.ttf"

  # No zap stanza required
end
