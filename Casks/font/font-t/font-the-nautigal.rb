cask "font-the-nautigal" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/thenautigal"
  name "The Nautigal"
  homepage "https://fonts.google.com/specimen/The+Nautigal"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "The Nautigal",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TheNautigal-Bold.ttf"
  font "TheNautigal-Regular.ttf"

  # No zap stanza required
end
