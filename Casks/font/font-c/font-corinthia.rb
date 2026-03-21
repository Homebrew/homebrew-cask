cask "font-corinthia" do
  version "1.013"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/corinthia"
  name "Corinthia"
  homepage "https://fonts.google.com/specimen/Corinthia"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Corinthia",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Corinthia-Bold.ttf"
  font "Corinthia-Regular.ttf"

  # No zap stanza required
end
