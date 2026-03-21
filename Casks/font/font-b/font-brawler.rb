cask "font-brawler" do
  version "1.101"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/brawler"
  name "Brawler"
  homepage "https://fonts.google.com/specimen/Brawler"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Brawler",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Brawler-Bold.ttf"
  font "Brawler-Regular.ttf"

  # No zap stanza required
end
