cask "font-sigmar-one" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sigmarone/SigmarOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sigmar One"
  homepage "https://fonts.google.com/specimen/Sigmar+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sigmar One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SigmarOne-Regular.ttf"

  # No zap stanza required
end
