cask "font-signika-negative" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/signikanegative/SignikaNegative%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Signika Negative"
  homepage "https://fonts.google.com/specimen/Signika+Negative"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Signika Negative",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SignikaNegative[wght].ttf"

  # No zap stanza required
end
