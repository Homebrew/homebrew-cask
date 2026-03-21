cask "font-changa-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/changaone"
  name "Changa One"
  homepage "https://fonts.google.com/specimen/Changa+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Changa One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ChangaOne-Italic.ttf"
  font "ChangaOne-Regular.ttf"

  # No zap stanza required
end
