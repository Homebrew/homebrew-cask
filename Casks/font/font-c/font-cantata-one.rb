cask "font-cantata-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cantataone/CantataOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cantata One"
  homepage "https://fonts.google.com/specimen/Cantata+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cantata One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CantataOne-Regular.ttf"

  # No zap stanza required
end
