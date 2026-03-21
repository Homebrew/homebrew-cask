cask "font-cause" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cause/Cause%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Cause"
  homepage "https://fonts.google.com/specimen/Cause"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cause",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Cause[wght].ttf"

  # No zap stanza required
end
