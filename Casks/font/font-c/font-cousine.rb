cask "font-cousine" do
  version "1.21"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "apache/cousine"
  name "Cousine"
  homepage "https://fonts.google.com/specimen/Cousine"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cousine",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Cousine-Bold.ttf"
  font "Cousine-BoldItalic.ttf"
  font "Cousine-Italic.ttf"
  font "Cousine-Regular.ttf"

  # No zap stanza required
end
