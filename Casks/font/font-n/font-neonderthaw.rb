cask "font-neonderthaw" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/neonderthaw/Neonderthaw-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Neonderthaw"
  desc "Single weight script that simulates neon"
  homepage "https://fonts.google.com/specimen/Neonderthaw"

  font "Neonderthaw-Regular.ttf"

  # No zap stanza required
end
