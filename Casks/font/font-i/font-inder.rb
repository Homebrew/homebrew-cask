cask "font-inder" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/inder/Inder-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Inder"
  homepage "https://fonts.google.com/specimen/Inder"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Inder",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Inder-Regular.ttf"

  # No zap stanza required
end
