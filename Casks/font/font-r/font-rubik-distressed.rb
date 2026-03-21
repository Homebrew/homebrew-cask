cask "font-rubik-distressed" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikdistressed/RubikDistressed-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Distressed"
  homepage "https://fonts.google.com/specimen/Rubik+Distressed"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Distressed",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikDistressed-Regular.ttf"

  # No zap stanza required
end
