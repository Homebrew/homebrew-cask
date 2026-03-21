cask "font-besley" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/besley"
  name "Besley"
  homepage "https://fonts.google.com/specimen/Besley"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Besley",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Besley-Italic[wght].ttf"
  font "Besley[wght].ttf"

  # No zap stanza required
end
