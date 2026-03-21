cask "font-aguafina-script" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aguafinascript/AguafinaScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aguafina Script"
  homepage "https://fonts.google.com/specimen/Aguafina+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Aguafina Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AguafinaScript-Regular.ttf"

  # No zap stanza required
end
