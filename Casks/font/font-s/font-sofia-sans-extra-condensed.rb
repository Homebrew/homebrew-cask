cask "font-sofia-sans-extra-condensed" do
  version "4.101"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sofiasansextracondensed"
  name "Sofia Sans Extra Condensed"
  homepage "https://fonts.google.com/specimen/Sofia+Sans+Extra+Condensed"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sofia Sans Extra Condensed",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SofiaSansExtraCondensed-Italic[wght].ttf"
  font "SofiaSansExtraCondensed[wght].ttf"

  # No zap stanza required
end
