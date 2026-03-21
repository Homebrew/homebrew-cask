cask "font-maiden-orange" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/maidenorange/MaidenOrange-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Maiden Orange"
  homepage "https://fonts.google.com/specimen/Maiden+Orange"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Maiden Orange",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MaidenOrange-Regular.ttf"

  # No zap stanza required
end
