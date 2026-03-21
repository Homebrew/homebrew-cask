cask "font-monsieur-la-doulaise" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/monsieurladoulaise/MonsieurLaDoulaise-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Monsieur La Doulaise"
  homepage "https://fonts.google.com/specimen/Monsieur+La+Doulaise"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Monsieur La Doulaise",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MonsieurLaDoulaise-Regular.ttf"

  # No zap stanza required
end
