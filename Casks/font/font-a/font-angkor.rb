cask "font-angkor" do
  version "8.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/angkor/Angkor-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Angkor"
  homepage "https://fonts.google.com/specimen/Angkor"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Angkor",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Angkor-Regular.ttf"

  # No zap stanza required
end
