cask "font-josefin-sans" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/josefinsans"
  name "Josefin Sans"
  homepage "https://fonts.google.com/specimen/Josefin+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Josefin Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "JosefinSans-Italic[wght].ttf"
  font "JosefinSans[wght].ttf"

  # No zap stanza required
end
