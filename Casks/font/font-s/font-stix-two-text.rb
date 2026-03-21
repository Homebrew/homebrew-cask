cask "font-stix-two-text" do
  version "2.13"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/stixtwotext"
  name "STIX Two Text"
  homepage "https://fonts.google.com/specimen/STIX+Two+Text"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "STIX Two Text",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "STIXTwoText-Italic[wght].ttf"
  font "STIXTwoText[wght].ttf"

  # No zap stanza required
end
