cask "font-rethink-sans" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rethinksans"
  name "Rethink Sans"
  homepage "https://fonts.google.com/specimen/Rethink+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rethink Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RethinkSans-Italic[wght].ttf"
  font "RethinkSans[wght].ttf"

  # No zap stanza required
end
