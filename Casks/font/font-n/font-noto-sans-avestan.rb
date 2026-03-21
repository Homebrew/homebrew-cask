cask "font-noto-sans-avestan" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansavestan/NotoSansAvestan-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Avestan"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Avestan"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Avestan",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansAvestan-Regular.ttf"

  # No zap stanza required
end
