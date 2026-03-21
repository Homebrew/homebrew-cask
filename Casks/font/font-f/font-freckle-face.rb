cask "font-freckle-face" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/freckleface/FreckleFace-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Freckle Face"
  homepage "https://fonts.google.com/specimen/Freckle+Face"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Freckle Face",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FreckleFace-Regular.ttf"

  # No zap stanza required
end
