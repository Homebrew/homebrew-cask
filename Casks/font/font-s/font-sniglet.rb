cask "font-sniglet" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sniglet"
  name "Sniglet"
  homepage "https://fonts.google.com/specimen/Sniglet"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sniglet",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sniglet-ExtraBold.ttf"
  font "Sniglet-Regular.ttf"

  # No zap stanza required
end
