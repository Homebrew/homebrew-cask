cask "font-bangers" do
  version "2.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bangers/Bangers-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bangers"
  homepage "https://fonts.google.com/specimen/Bangers"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bangers",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Bangers-Regular.ttf"

  # No zap stanza required
end
