cask "font-duru-sans" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/durusans/DuruSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Duru Sans"
  homepage "https://fonts.google.com/specimen/Duru+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Duru Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DuruSans-Regular.ttf"

  # No zap stanza required
end
