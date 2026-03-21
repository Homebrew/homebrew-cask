cask "font-ubuntu-sans-mono" do
  version "1.006"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ufl/ubuntusansmono"
  name "Ubuntu Sans Mono"
  homepage "https://fonts.google.com/specimen/Ubuntu+Sans+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ubuntu Sans Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "UbuntuSansMono-Italic[wght].ttf"
  font "UbuntuSansMono[wght].ttf"

  # No zap stanza required
end
