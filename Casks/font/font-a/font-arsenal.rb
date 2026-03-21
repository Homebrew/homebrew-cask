cask "font-arsenal" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/arsenal"
  name "Arsenal"
  homepage "https://fonts.google.com/specimen/Arsenal"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Arsenal",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Arsenal-Bold.ttf"
  font "Arsenal-BoldItalic.ttf"
  font "Arsenal-Italic.ttf"
  font "Arsenal-Regular.ttf"

  # No zap stanza required
end
