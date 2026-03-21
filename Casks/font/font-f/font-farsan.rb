cask "font-farsan" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/farsan/Farsan-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Farsan"
  homepage "https://fonts.google.com/specimen/Farsan"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Farsan",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Farsan-Regular.ttf"

  # No zap stanza required
end
