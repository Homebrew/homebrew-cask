cask "font-vidaloka" do
  version "1.011"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vidaloka/Vidaloka-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Vidaloka"
  homepage "https://fonts.google.com/specimen/Vidaloka"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Vidaloka",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Vidaloka-Regular.ttf"

  # No zap stanza required
end
