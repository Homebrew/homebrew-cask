cask "font-gwendolyn" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gwendolyn"
  name "Gwendolyn"
  homepage "https://fonts.google.com/specimen/Gwendolyn"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gwendolyn",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gwendolyn-Bold.ttf"
  font "Gwendolyn-Regular.ttf"

  # No zap stanza required
end
