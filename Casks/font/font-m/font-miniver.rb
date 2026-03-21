cask "font-miniver" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/miniver/Miniver-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Miniver"
  homepage "https://fonts.google.com/specimen/Miniver"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Miniver",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Miniver-Regular.ttf"

  # No zap stanza required
end
