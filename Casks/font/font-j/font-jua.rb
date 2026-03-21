cask "font-jua" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jua/Jua-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jua"
  homepage "https://fonts.google.com/specimen/Jua"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jua",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jua-Regular.ttf"

  # No zap stanza required
end
