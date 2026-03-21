cask "font-unna" do
  version "2.007"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/unna"
  name "Unna"
  homepage "https://fonts.google.com/specimen/Unna"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Unna",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Unna-Bold.ttf"
  font "Unna-BoldItalic.ttf"
  font "Unna-Italic.ttf"
  font "Unna-Regular.ttf"

  # No zap stanza required
end
