cask "font-source-sans-3" do
  version "3.052"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sourcesans3"
  name "Source Sans 3"
  homepage "https://fonts.google.com/specimen/Source+Sans+3"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Source Sans 3",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SourceSans3-Italic[wght].ttf"
  font "SourceSans3[wght].ttf"

  # No zap stanza required
end
