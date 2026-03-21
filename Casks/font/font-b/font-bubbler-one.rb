cask "font-bubbler-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bubblerone/BubblerOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bubbler One"
  homepage "https://fonts.google.com/specimen/Bubbler+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bubbler One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BubblerOne-Regular.ttf"

  # No zap stanza required
end
