cask "font-news-cycle" do
  version "0.5.1"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/newscycle"
  name "News Cycle"
  homepage "https://fonts.google.com/specimen/News+Cycle"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "News Cycle",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NewsCycle-Bold.ttf"
  font "NewsCycle-Regular.ttf"

  # No zap stanza required
end
