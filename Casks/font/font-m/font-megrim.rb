cask "font-megrim" do
  version "20110427"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/megrim/Megrim.ttf",
      verified: "github.com/google/fonts/"
  name "Megrim"
  homepage "https://fonts.google.com/specimen/Megrim"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Megrim",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Megrim.ttf"

  # No zap stanza required
end
