cask "font-noto-serif-dives-akuru" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifdivesakuru/NotoSerifDivesAkuru-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Dives Akuru"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Dives+Akuru"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Dives Akuru",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifDivesAkuru-Regular.ttf"

  # No zap stanza required
end
