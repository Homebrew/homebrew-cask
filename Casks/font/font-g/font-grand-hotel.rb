cask "font-grand-hotel" do
  version "001.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/grandhotel/GrandHotel-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Grand Hotel"
  homepage "https://fonts.google.com/specimen/Grand+Hotel"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Grand Hotel",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GrandHotel-Regular.ttf"

  # No zap stanza required
end
