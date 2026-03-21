cask "font-rubik-spray-paint" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikspraypaint/RubikSprayPaint-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Spray Paint"
  homepage "https://fonts.google.com/specimen/Rubik+Spray+Paint"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Spray Paint",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikSprayPaint-Regular.ttf"

  # No zap stanza required
end
