cask "font-flamenco" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/flamenco"
  name "Flamenco"
  homepage "https://fonts.google.com/specimen/Flamenco"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Flamenco",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Flamenco-Light.ttf"
  font "Flamenco-Regular.ttf"

  # No zap stanza required
end
