cask "font-workbench" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/workbench/Workbench%5BBLED%2CSCAN%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Workbench"
  homepage "https://fonts.google.com/specimen/Workbench"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Workbench",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Workbench[BLED,SCAN].ttf"

  # No zap stanza required
end
