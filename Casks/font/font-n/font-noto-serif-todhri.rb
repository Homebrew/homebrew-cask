cask "font-noto-serif-todhri" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriftodhri/NotoSerifTodhri-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Todhri"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Todhri"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Todhri",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifTodhri-Regular.ttf"

  # No zap stanza required
end
