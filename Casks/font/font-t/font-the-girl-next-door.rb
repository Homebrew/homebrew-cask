cask "font-the-girl-next-door" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/thegirlnextdoor/TheGirlNextDoor.ttf",
      verified: "github.com/google/fonts/"
  name "The Girl Next Door"
  homepage "https://fonts.google.com/specimen/The+Girl+Next+Door"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "The Girl Next Door",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TheGirlNextDoor.ttf"

  # No zap stanza required
end
