cask "font-sofia-sans" do
  version "4.101"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sofiasans"
  name "Sofia Sans"
  homepage "https://fonts.google.com/specimen/Sofia+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sofia Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SofiaSans-Italic[wght].ttf"
  font "SofiaSans[wght].ttf"

  # No zap stanza required
end
