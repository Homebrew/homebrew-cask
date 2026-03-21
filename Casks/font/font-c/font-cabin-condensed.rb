cask "font-cabin-condensed" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cabincondensed"
  name "Cabin Condensed"
  homepage "https://fonts.google.com/specimen/Cabin+Condensed"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cabin Condensed",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CabinCondensed-Bold.ttf"
  font "CabinCondensed-Medium.ttf"
  font "CabinCondensed-Regular.ttf"
  font "CabinCondensed-SemiBold.ttf"

  # No zap stanza required
end
