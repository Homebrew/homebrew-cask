cask "font-petit-formal-script" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/petitformalscript/PetitFormalScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Petit Formal Script"
  homepage "https://fonts.google.com/specimen/Petit+Formal+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Petit Formal Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PetitFormalScript-Regular.ttf"

  # No zap stanza required
end
