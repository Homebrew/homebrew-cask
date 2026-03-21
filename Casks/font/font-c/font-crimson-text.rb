cask "font-crimson-text" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/crimsontext"
  name "Crimson Text"
  homepage "https://fonts.google.com/specimen/Crimson+Text"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Crimson Text",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CrimsonText-Bold.ttf"
  font "CrimsonText-BoldItalic.ttf"
  font "CrimsonText-Italic.ttf"
  font "CrimsonText-Regular.ttf"
  font "CrimsonText-SemiBold.ttf"
  font "CrimsonText-SemiBoldItalic.ttf"

  # No zap stanza required
end
