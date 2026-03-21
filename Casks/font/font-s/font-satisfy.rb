cask "font-satisfy" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/satisfy/Satisfy-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Satisfy"
  homepage "https://fonts.google.com/specimen/Satisfy"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Satisfy",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Satisfy-Regular.ttf"

  # No zap stanza required
end
