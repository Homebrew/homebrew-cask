cask "font-jockey-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jockeyone/JockeyOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jockey One"
  homepage "https://fonts.google.com/specimen/Jockey+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jockey One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "JockeyOne-Regular.ttf"

  # No zap stanza required
end
