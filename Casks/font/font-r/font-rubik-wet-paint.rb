cask "font-rubik-wet-paint" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikwetpaint/RubikWetPaint-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Wet Paint"
  homepage "https://fonts.google.com/specimen/Rubik+Wet+Paint"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Wet Paint",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikWetPaint-Regular.ttf"

  # No zap stanza required
end
