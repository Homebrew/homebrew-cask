cask "font-patua-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/patuaone/PatuaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Patua One"
  homepage "https://fonts.google.com/specimen/Patua+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Patua One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PatuaOne-Regular.ttf"

  # No zap stanza required
end
