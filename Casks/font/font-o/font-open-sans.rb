cask "font-open-sans" do
  version "3.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/opensans"
  name "Open Sans"
  homepage "https://fonts.google.com/specimen/Open+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Open Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "OpenSans-Italic[wdth,wght].ttf"
  font "OpenSans[wdth,wght].ttf"

  # No zap stanza required
end
