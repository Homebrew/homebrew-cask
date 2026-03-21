cask "font-luxurious-script" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/luxuriousscript/LuxuriousScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Luxurious Script"
  homepage "https://fonts.google.com/specimen/Luxurious+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Luxurious Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LuxuriousScript-Regular.ttf"

  # No zap stanza required
end
