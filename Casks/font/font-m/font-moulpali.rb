cask "font-moulpali" do
  version "8.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/moulpali/Moulpali-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Moulpali"
  homepage "https://fonts.google.com/specimen/Moulpali"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Moulpali",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Moulpali-Regular.ttf"

  # No zap stanza required
end
