cask "font-dm-serif-display" do
  version "5.200"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/dmserifdisplay"
  name "DM Serif Display"
  homepage "https://fonts.google.com/specimen/DM+Serif+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "DM Serif Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DMSerifDisplay-Italic.ttf"
  font "DMSerifDisplay-Regular.ttf"

  # No zap stanza required
end
