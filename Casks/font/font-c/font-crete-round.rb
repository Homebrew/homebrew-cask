cask "font-crete-round" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/creteround"
  name "Crete Round"
  homepage "https://fonts.google.com/specimen/Crete+Round"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Crete Round",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CreteRound-Italic.ttf"
  font "CreteRound-Regular.ttf"

  # No zap stanza required
end
