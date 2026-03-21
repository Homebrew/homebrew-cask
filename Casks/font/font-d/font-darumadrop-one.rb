cask "font-darumadrop-one" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/darumadropone/DarumadropOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Darumadrop One"
  homepage "https://fonts.google.com/specimen/Darumadrop+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Darumadrop One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DarumadropOne-Regular.ttf"

  # No zap stanza required
end
