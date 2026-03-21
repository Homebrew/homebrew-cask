cask "font-mooli" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mooli/Mooli-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mooli"
  homepage "https://fonts.google.com/specimen/Mooli"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mooli",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Mooli-Regular.ttf"

  # No zap stanza required
end
