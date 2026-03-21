cask "font-david-libre" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/davidlibre"
  name "David Libre"
  homepage "https://fonts.google.com/specimen/David+Libre"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "David Libre",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DavidLibre-Bold.ttf"
  font "DavidLibre-Medium.ttf"
  font "DavidLibre-Regular.ttf"

  # No zap stanza required
end
