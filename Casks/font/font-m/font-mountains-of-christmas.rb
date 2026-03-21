cask "font-mountains-of-christmas" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "apache/mountainsofchristmas"
  name "Mountains of Christmas"
  homepage "https://fonts.google.com/specimen/Mountains+of+Christmas"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mountains of Christmas",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MountainsofChristmas-Bold.ttf"
  font "MountainsofChristmas-Regular.ttf"

  # No zap stanza required
end
