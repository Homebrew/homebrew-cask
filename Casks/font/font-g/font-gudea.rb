cask "font-gudea" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gudea"
  name "Gudea"
  homepage "https://fonts.google.com/specimen/Gudea"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gudea",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gudea-Bold.ttf"
  font "Gudea-Italic.ttf"
  font "Gudea-Regular.ttf"

  # No zap stanza required
end
