cask "font-neonderthaw" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/neonderthaw/Neonderthaw-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Neonderthaw"
  homepage "https://fonts.google.com/specimen/Neonderthaw"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Neonderthaw",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Neonderthaw-Regular.ttf"

  # No zap stanza required
end
