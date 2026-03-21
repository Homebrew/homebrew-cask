cask "font-almendra" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/almendra"
  name "Almendra"
  homepage "https://fonts.google.com/specimen/Almendra"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Almendra",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Almendra-Bold.ttf"
  font "Almendra-BoldItalic.ttf"
  font "Almendra-Italic.ttf"
  font "Almendra-Regular.ttf"

  # No zap stanza required
end
