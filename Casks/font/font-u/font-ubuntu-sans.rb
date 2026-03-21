cask "font-ubuntu-sans" do
  version "1.006"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ufl/ubuntusans"
  name "Ubuntu Sans"
  homepage "https://fonts.google.com/specimen/Ubuntu+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ubuntu Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "UbuntuSans-Italic[wdth,wght].ttf"
  font "UbuntuSans[wdth,wght].ttf"

  # No zap stanza required
end
