cask "font-gorditas" do
  version "001.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gorditas"
  name "Gorditas"
  homepage "https://fonts.google.com/specimen/Gorditas"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gorditas",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gorditas-Bold.ttf"
  font "Gorditas-Regular.ttf"

  # No zap stanza required
end
