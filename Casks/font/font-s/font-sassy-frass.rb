cask "font-sassy-frass" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sassyfrass/SassyFrass-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sassy Frass"
  homepage "https://fonts.google.com/specimen/Sassy+Frass"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sassy Frass",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SassyFrass-Regular.ttf"

  # No zap stanza required
end
