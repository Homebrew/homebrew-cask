cask "font-michroma" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/michroma/Michroma-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Michroma"
  homepage "https://fonts.google.com/specimen/Michroma"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Michroma",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Michroma-Regular.ttf"

  # No zap stanza required
end
