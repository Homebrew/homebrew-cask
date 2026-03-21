cask "font-chathura" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/chathura"
  name "Chathura"
  homepage "https://fonts.google.com/specimen/Chathura"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Chathura",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Chathura-Bold.ttf"
  font "Chathura-ExtraBold.ttf"
  font "Chathura-Light.ttf"
  font "Chathura-Regular.ttf"
  font "Chathura-Thin.ttf"

  # No zap stanza required
end
