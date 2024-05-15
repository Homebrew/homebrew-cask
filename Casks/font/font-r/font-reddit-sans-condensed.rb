cask "font-reddit-sans-condensed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/redditsanscondensed/RedditSansCondensed%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Reddit Sans Condensed"
  desc "Complemented by reddit sans and reddit mono"
  homepage "https://fonts.google.com/specimen/Reddit+Sans+Condensed"

  font "RedditSansCondensed[wght].ttf"

  # No zap stanza required
end
