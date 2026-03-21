cask "font-source-code-pro" do
  version "1.026"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sourcecodepro"
  name "Source Code Pro"
  homepage "https://fonts.google.com/specimen/Source+Code+Pro"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Source Code Pro",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SourceCodePro-Italic[wght].ttf"
  font "SourceCodePro[wght].ttf"

  # No zap stanza required
end
