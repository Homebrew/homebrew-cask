cask "font-miranda-sans" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mirandasans"
  name "Miranda Sans"
  homepage "https://fonts.google.com/specimen/Miranda+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Miranda Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MirandaSans-Italic[wght].ttf"
  font "MirandaSans[wght].ttf"

  # No zap stanza required
end
