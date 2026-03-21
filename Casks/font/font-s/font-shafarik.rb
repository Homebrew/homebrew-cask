cask "font-shafarik" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shafarik/Shafarik-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Shafarik"
  homepage "https://fonts.google.com/specimen/Shafarik"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Shafarik",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Shafarik-Regular.ttf"

  # No zap stanza required
end
