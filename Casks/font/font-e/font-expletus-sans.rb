cask "font-expletus-sans" do
  version "7.500"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/expletussans"
  name "Expletus Sans"
  homepage "https://fonts.google.com/specimen/Expletus+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Expletus Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ExpletusSans-Italic[wght].ttf"
  font "ExpletusSans[wght].ttf"

  # No zap stanza required
end
