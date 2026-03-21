cask "font-montserrat-underline" do
  version "9.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/montserratunderline"
  name "Montserrat Underline"
  homepage "https://fonts.google.com/specimen/Montserrat+Underline"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Montserrat Underline",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MontserratUnderline-Italic[wght].ttf"
  font "MontserratUnderline[wght].ttf"

  # No zap stanza required
end
