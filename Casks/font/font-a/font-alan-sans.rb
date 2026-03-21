cask "font-alan-sans" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alansans/AlanSans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Alan Sans"
  homepage "https://fonts.google.com/specimen/Alan+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alan Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AlanSans[wght].ttf"

  # No zap stanza required
end
