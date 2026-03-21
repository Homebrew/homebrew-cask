cask "font-nunito" do
  version "3.602"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/nunito"
  name "Nunito"
  homepage "https://fonts.google.com/specimen/Nunito"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nunito",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Nunito-Italic[wght].ttf"
  font "Nunito[wght].ttf"

  # No zap stanza required
end
