cask "font-rubik-scribble" do
  version "2.201"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikscribble/RubikScribble-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Scribble"
  homepage "https://fonts.google.com/specimen/Rubik+Scribble"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Scribble",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikScribble-Regular.ttf"

  # No zap stanza required
end
