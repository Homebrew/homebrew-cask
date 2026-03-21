cask "font-diplomata-sc" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/diplomatasc/DiplomataSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Diplomata SC"
  homepage "https://fonts.google.com/specimen/Diplomata+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Diplomata SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DiplomataSC-Regular.ttf"

  # No zap stanza required
end
