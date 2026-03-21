cask "font-jim-nightshade" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jimnightshade/JimNightshade-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jim Nightshade"
  homepage "https://fonts.google.com/specimen/Jim+Nightshade"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jim Nightshade",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "JimNightshade-Regular.ttf"

  # No zap stanza required
end
