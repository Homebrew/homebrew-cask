cask "font-rufina" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rufina"
  name "Rufina"
  homepage "https://fonts.google.com/specimen/Rufina"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rufina",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rufina-Bold.ttf"
  font "Rufina-Regular.ttf"

  # No zap stanza required
end
