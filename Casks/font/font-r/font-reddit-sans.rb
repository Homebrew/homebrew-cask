cask "font-reddit-sans" do
  version "1.013"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/redditsans"
  name "Reddit Sans"
  homepage "https://fonts.google.com/specimen/Reddit+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Reddit Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RedditSans-Italic[wght].ttf"
  font "RedditSans[wght].ttf"

  # No zap stanza required
end
