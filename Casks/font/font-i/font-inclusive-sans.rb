cask "font-inclusive-sans" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/inclusivesans"
  name "Inclusive Sans"
  homepage "https://fonts.google.com/specimen/Inclusive+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Inclusive Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "InclusiveSans-Italic[wght].ttf"
  font "InclusiveSans[wght].ttf"

  # No zap stanza required
end
