cask "font-reddit-mono" do
  version "1.014"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/redditmono/RedditMono%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Reddit Mono"
  homepage "https://fonts.google.com/specimen/Reddit+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Reddit Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RedditMono[wght].ttf"

  # No zap stanza required
end
