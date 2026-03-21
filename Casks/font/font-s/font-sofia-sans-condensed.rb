cask "font-sofia-sans-condensed" do
  version "4.101"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sofiasanscondensed"
  name "Sofia Sans Condensed"
  homepage "https://fonts.google.com/specimen/Sofia+Sans+Condensed"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sofia Sans Condensed",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SofiaSansCondensed-Italic[wght].ttf"
  font "SofiaSansCondensed[wght].ttf"

  # No zap stanza required
end
