cask "font-birthstone" do
  version "1.013"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/birthstone/Birthstone-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Birthstone"
  homepage "https://fonts.google.com/specimen/Birthstone"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Birthstone",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Birthstone-Regular.ttf"

  # No zap stanza required
end
