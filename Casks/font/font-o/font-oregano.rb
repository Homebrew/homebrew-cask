cask "font-oregano" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/oregano"
  name "Oregano"
  homepage "https://fonts.google.com/specimen/Oregano"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Oregano",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Oregano-Italic.ttf"
  font "Oregano-Regular.ttf"

  # No zap stanza required
end
