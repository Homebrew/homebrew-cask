cask "font-jomolhari" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jomolhari/Jomolhari-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jomolhari"
  homepage "https://fonts.google.com/specimen/Jomolhari"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jomolhari",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jomolhari-Regular.ttf"

  # No zap stanza required
end
