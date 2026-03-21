cask "font-volkhov" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/volkhov"
  name "Volkhov"
  homepage "https://fonts.google.com/specimen/Volkhov"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Volkhov",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Volkhov-Bold.ttf"
  font "Volkhov-BoldItalic.ttf"
  font "Volkhov-Italic.ttf"
  font "Volkhov-Regular.ttf"

  # No zap stanza required
end
