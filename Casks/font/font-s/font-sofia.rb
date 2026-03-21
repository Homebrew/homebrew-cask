cask "font-sofia" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sofia/Sofia-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sofia"
  homepage "https://fonts.google.com/specimen/Sofia"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sofia",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sofia-Regular.ttf"

  # No zap stanza required
end
