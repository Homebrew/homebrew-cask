cask "font-noto-sans-psalter-pahlavi" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanspsalterpahlavi/NotoSansPsalterPahlavi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Psalter Pahlavi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Psalter+Pahlavi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Psalter Pahlavi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansPsalterPahlavi-Regular.ttf"

  # No zap stanza required
end
