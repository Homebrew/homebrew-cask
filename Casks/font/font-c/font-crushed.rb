cask "font-crushed" do
  version "001.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/crushed/Crushed-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Crushed"
  homepage "https://fonts.google.com/specimen/Crushed"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Crushed",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Crushed-Regular.ttf"

  # No zap stanza required
end
