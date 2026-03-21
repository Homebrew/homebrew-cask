cask "font-pirata-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pirataone/PirataOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pirata One"
  homepage "https://fonts.google.com/specimen/Pirata+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Pirata One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PirataOne-Regular.ttf"

  # No zap stanza required
end
