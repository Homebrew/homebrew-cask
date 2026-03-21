cask "font-dm-serif-text" do
  version "5.200"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/dmseriftext"
  name "DM Serif Text"
  homepage "https://fonts.google.com/specimen/DM+Serif+Text"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "DM Serif Text",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DMSerifText-Italic.ttf"
  font "DMSerifText-Regular.ttf"

  # No zap stanza required
end
