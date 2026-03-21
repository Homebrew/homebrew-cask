cask "font-aldrich" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aldrich/Aldrich-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aldrich"
  homepage "https://fonts.google.com/specimen/Aldrich"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Aldrich",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Aldrich-Regular.ttf"

  # No zap stanza required
end
