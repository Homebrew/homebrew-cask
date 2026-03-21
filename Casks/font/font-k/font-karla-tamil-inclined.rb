cask "font-karla-tamil-inclined" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/karlatamilinclined"
  name "Karla Tamil Inclined"
  homepage "https://fonts.google.com/specimen/Karla+Tamil+Inclined"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Karla Tamil Inclined",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KarlaTamilInclined-Bold.ttf"
  font "KarlaTamilInclined-Regular.ttf"

  # No zap stanza required
end
