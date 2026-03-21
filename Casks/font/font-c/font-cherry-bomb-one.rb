cask "font-cherry-bomb-one" do
  version "4.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cherrybombone/CherryBombOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cherry Bomb One"
  homepage "https://fonts.google.com/specimen/Cherry+Bomb+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cherry Bomb One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CherryBombOne-Regular.ttf"

  # No zap stanza required
end
