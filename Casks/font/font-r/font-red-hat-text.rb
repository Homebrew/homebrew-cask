cask "font-red-hat-text" do
  version "1.030"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/redhattext"
  name "Red Hat Text"
  homepage "https://fonts.google.com/specimen/Red+Hat+Text"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Red Hat Text",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RedHatText-Italic[wght].ttf"
  font "RedHatText[wght].ttf"

  # No zap stanza required
end
