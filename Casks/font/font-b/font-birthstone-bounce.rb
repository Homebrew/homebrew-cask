cask "font-birthstone-bounce" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/birthstonebounce"
  name "Birthstone Bounce"
  homepage "https://fonts.google.com/specimen/Birthstone+Bounce"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Birthstone Bounce",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BirthstoneBounce-Medium.ttf"
  font "BirthstoneBounce-Regular.ttf"

  # No zap stanza required
end
