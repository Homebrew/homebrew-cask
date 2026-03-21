cask "font-bayon" do
  version "8.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bayon/Bayon-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bayon"
  homepage "https://fonts.google.com/specimen/Bayon"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bayon",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Bayon-Regular.ttf"

  # No zap stanza required
end
