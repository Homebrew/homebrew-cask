cask "font-marvel" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/marvel"
  name "Marvel"
  homepage "https://fonts.google.com/specimen/Marvel"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Marvel",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Marvel-Bold.ttf"
  font "Marvel-BoldItalic.ttf"
  font "Marvel-Italic.ttf"
  font "Marvel-Regular.ttf"

  # No zap stanza required
end
