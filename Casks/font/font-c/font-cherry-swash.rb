cask "font-cherry-swash" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cherryswash"
  name "Cherry Swash"
  homepage "https://fonts.google.com/specimen/Cherry+Swash"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cherry Swash",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CherrySwash-Bold.ttf"
  font "CherrySwash-Regular.ttf"

  # No zap stanza required
end
