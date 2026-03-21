cask "font-diplomata" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/diplomata/Diplomata-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Diplomata"
  homepage "https://fonts.google.com/specimen/Diplomata"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Diplomata",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Diplomata-Regular.ttf"

  # No zap stanza required
end
