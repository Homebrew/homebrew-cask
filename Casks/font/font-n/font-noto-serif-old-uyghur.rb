cask "font-noto-serif-old-uyghur" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifolduyghur/NotoSerifOldUyghur-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Old Uyghur"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Old+Uyghur"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Old Uyghur",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifOldUyghur-Regular.ttf"

  # No zap stanza required
end
