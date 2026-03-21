cask "font-fjalla-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fjallaone/FjallaOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fjalla One"
  homepage "https://fonts.google.com/specimen/Fjalla+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fjalla One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FjallaOne-Regular.ttf"

  # No zap stanza required
end
