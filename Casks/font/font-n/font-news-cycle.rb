cask "font-news-cycle" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/newscycle"
  name "News Cycle"
  homepage "https://fonts.google.com/specimen/News+Cycle"

  font "NewsCycle-Bold.ttf"
  font "NewsCycle-Regular.ttf"

  # No zap stanza required
end
