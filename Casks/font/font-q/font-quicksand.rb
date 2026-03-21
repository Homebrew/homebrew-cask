cask "font-quicksand" do
  version "3.006"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/quicksand/Quicksand%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Quicksand"
  homepage "https://fonts.google.com/specimen/Quicksand"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Quicksand",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Quicksand[wght].ttf"

  # No zap stanza required
end
