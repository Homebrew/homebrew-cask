cask "font-onest" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/onest/Onest%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Onest"
  homepage "https://fonts.google.com/specimen/Onest"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Onest",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Onest[wght].ttf"

  # No zap stanza required
end
