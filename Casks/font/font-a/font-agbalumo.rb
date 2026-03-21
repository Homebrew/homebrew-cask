cask "font-agbalumo" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/agbalumo/Agbalumo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Agbalumo"
  homepage "https://fonts.google.com/specimen/Agbalumo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Agbalumo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Agbalumo-Regular.ttf"

  # No zap stanza required
end
