cask "font-bigshot-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshotone/BigshotOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bigshot One"
  homepage "https://fonts.google.com/specimen/Bigshot+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bigshot One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BigshotOne-Regular.ttf"

  # No zap stanza required
end
