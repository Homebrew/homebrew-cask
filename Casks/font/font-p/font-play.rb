cask "font-play" do
  version "2.101"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/play"
  name "Play"
  homepage "https://fonts.google.com/specimen/Play"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Play",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Play-Bold.ttf"
  font "Play-Regular.ttf"

  # No zap stanza required
end
