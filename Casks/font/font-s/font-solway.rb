cask "font-solway" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/solway"
  name "Solway"
  homepage "https://fonts.google.com/specimen/Solway"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Solway",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Solway-Bold.ttf"
  font "Solway-ExtraBold.ttf"
  font "Solway-Light.ttf"
  font "Solway-Medium.ttf"
  font "Solway-Regular.ttf"

  # No zap stanza required
end
