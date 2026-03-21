cask "font-solitreo" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/solitreo/Solitreo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Solitreo"
  homepage "https://fonts.google.com/specimen/Solitreo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Solitreo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Solitreo-Regular.ttf"

  # No zap stanza required
end
