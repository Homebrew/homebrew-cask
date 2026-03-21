cask "font-mina" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mina"
  name "Mina"
  homepage "https://fonts.google.com/specimen/Mina"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mina",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Mina-Bold.ttf"
  font "Mina-Regular.ttf"

  # No zap stanza required
end
