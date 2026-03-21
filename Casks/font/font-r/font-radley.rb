cask "font-radley" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/radley"
  name "Radley"
  homepage "https://fonts.google.com/specimen/Radley"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Radley",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Radley-Italic.ttf"
  font "Radley-Regular.ttf"

  # No zap stanza required
end
