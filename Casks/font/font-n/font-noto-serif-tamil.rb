cask "font-noto-serif-tamil" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/notoseriftamil"
  name "Noto Serif Tamil"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Tamil"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Tamil",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifTamil-Italic[wdth,wght].ttf"
  font "NotoSerifTamil[wdth,wght].ttf"

  # No zap stanza required
end
