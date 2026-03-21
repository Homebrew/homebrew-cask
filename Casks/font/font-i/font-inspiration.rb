cask "font-inspiration" do
  version "2.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/inspiration/Inspiration-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Inspiration"
  homepage "https://fonts.google.com/specimen/Inspiration"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Inspiration",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Inspiration-Regular.ttf"

  # No zap stanza required
end
