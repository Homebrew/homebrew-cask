cask "font-meie-script" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/meiescript/MeieScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Meie Script"
  homepage "https://fonts.google.com/specimen/Meie+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Meie Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MeieScript-Regular.ttf"

  # No zap stanza required
end
