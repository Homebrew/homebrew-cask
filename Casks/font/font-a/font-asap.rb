cask "font-asap" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/asap"
  name "Asap"
  homepage "https://fonts.google.com/specimen/Asap"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Asap",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Asap-Italic[wdth,wght].ttf"
  font "Asap[wdth,wght].ttf"

  # No zap stanza required
end
