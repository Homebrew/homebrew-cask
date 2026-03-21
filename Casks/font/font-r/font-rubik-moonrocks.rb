cask "font-rubik-moonrocks" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikmoonrocks/RubikMoonrocks-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Moonrocks"
  homepage "https://fonts.google.com/specimen/Rubik+Moonrocks"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Moonrocks",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikMoonrocks-Regular.ttf"

  # No zap stanza required
end
