cask "font-reddit-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/redditmono/RedditMono%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Reddit Mono"
  homepage "https://fonts.google.com/specimen/Reddit+Mono"

  font "RedditMono[wght].ttf"

  # No zap stanza required
end
