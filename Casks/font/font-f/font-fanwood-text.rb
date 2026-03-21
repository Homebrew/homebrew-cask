cask "font-fanwood-text" do
  version "1.101"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/fanwoodtext"
  name "Fanwood Text"
  homepage "https://fonts.google.com/specimen/Fanwood+Text"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fanwood Text",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FanwoodText-Italic.ttf"
  font "FanwoodText-Regular.ttf"

  # No zap stanza required
end
