cask "font-reddit-sans-condensed" do
  version "1.014"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/redditsanscondensed/RedditSansCondensed%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Reddit Sans Condensed"
  homepage "https://fonts.google.com/specimen/Reddit+Sans+Condensed"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Reddit Sans Condensed",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RedditSansCondensed[wght].ttf"

  # No zap stanza required
end
