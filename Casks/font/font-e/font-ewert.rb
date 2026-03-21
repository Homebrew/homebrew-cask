cask "font-ewert" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ewert/Ewert-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ewert"
  homepage "https://fonts.google.com/specimen/Ewert"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ewert",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ewert-Regular.ttf"

  # No zap stanza required
end
