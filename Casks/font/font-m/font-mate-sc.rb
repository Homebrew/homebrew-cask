cask "font-mate-sc" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/matesc/MateSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mate SC"
  homepage "https://fonts.google.com/specimen/Mate+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mate SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MateSC-Regular.ttf"

  # No zap stanza required
end
