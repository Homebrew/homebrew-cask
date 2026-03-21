cask "font-philosopher" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/philosopher"
  name "Philosopher"
  homepage "https://fonts.google.com/specimen/Philosopher"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Philosopher",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Philosopher-Bold.ttf"
  font "Philosopher-BoldItalic.ttf"
  font "Philosopher-Italic.ttf"
  font "Philosopher-Regular.ttf"

  # No zap stanza required
end
