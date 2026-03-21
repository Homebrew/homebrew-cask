cask "font-poetsen-one" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/poetsenone/PoetsenOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Poetsen One"
  homepage "https://fonts.google.com/specimen/Poetsen+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Poetsen One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PoetsenOne-Regular.ttf"

  # No zap stanza required
end
