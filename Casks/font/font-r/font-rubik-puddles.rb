cask "font-rubik-puddles" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikpuddles/RubikPuddles-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Puddles"
  homepage "https://fonts.google.com/specimen/Rubik+Puddles"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Puddles",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikPuddles-Regular.ttf"

  # No zap stanza required
end
