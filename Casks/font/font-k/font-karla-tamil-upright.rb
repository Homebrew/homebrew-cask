cask "font-karla-tamil-upright" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/karlatamilupright"
  name "Karla Tamil Upright"
  homepage "https://fonts.google.com/specimen/Karla+Tamil+Upright"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Karla Tamil Upright",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KarlaTamilUpright-Bold.ttf"
  font "KarlaTamilUpright-Regular.ttf"

  # No zap stanza required
end
