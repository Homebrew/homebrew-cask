cask "font-della-respira" do
  version "0.201"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dellarespira/DellaRespira-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Della Respira"
  homepage "https://fonts.google.com/specimen/Della+Respira"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Della Respira",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DellaRespira-Regular.ttf"

  # No zap stanza required
end
