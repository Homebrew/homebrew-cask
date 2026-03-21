cask "font-meow-script" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/meowscript/MeowScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Meow Script"
  homepage "https://fonts.google.com/specimen/Meow+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Meow Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MeowScript-Regular.ttf"

  # No zap stanza required
end
