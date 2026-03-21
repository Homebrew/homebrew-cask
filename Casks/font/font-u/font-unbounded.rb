cask "font-unbounded" do
  version "1.701"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/unbounded/Unbounded%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Unbounded"
  homepage "https://fonts.google.com/specimen/Unbounded"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Unbounded",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Unbounded[wght].ttf"

  # No zap stanza required
end
