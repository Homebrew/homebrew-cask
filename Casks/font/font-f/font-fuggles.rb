cask "font-fuggles" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fuggles/Fuggles-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fuggles"
  homepage "https://fonts.google.com/specimen/Fuggles"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fuggles",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Fuggles-Regular.ttf"

  # No zap stanza required
end
