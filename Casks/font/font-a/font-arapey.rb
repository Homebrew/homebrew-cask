cask "font-arapey" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/arapey"
  name "Arapey"
  homepage "https://fonts.google.com/specimen/Arapey"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Arapey",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Arapey-Italic.ttf"
  font "Arapey-Regular.ttf"

  # No zap stanza required
end
