cask "font-zen-antique-soft" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zenantiquesoft/ZenAntiqueSoft-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Zen Antique Soft"
  homepage "https://fonts.google.com/specimen/Zen+Antique+Soft"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zen Antique Soft",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZenAntiqueSoft-Regular.ttf"

  # No zap stanza required
end
