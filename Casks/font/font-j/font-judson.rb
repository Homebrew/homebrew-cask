cask "font-judson" do
  version "20110429"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/judson"
  name "Judson"
  homepage "https://fonts.google.com/specimen/Judson"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Judson",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Judson-Bold.ttf"
  font "Judson-Italic.ttf"
  font "Judson-Regular.ttf"

  # No zap stanza required
end
