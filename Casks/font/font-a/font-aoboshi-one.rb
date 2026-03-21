cask "font-aoboshi-one" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/aoboshione/AoboshiOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aoboshi One"
  homepage "https://fonts.google.com/specimen/Aoboshi+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Aoboshi One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AoboshiOne-Regular.ttf"

  # No zap stanza required
end
