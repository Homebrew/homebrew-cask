cask "font-sen" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sen/Sen%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Sen"
  homepage "https://fonts.google.com/specimen/Sen"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sen",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sen[wght].ttf"

  # No zap stanza required
end
