cask "font-content" do
  version "6.00"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/content"
  name "Content"
  homepage "https://fonts.google.com/specimen/Content"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Content",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Content-Bold.ttf"
  font "Content-Regular.ttf"

  # No zap stanza required
end
