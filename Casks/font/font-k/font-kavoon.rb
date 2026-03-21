cask "font-kavoon" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kavoon/Kavoon-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kavoon"
  homepage "https://fonts.google.com/specimen/Kavoon"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kavoon",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kavoon-Regular.ttf"

  # No zap stanza required
end
