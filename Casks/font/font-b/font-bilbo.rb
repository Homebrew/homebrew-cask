cask "font-bilbo" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bilbo/Bilbo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bilbo"
  homepage "https://fonts.google.com/specimen/Bilbo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bilbo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Bilbo-Regular.ttf"

  # No zap stanza required
end
