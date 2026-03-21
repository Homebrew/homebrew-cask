cask "font-mate" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mate"
  name "Mate"
  homepage "https://fonts.google.com/specimen/Mate"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mate",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Mate-Italic.ttf"
  font "Mate-Regular.ttf"

  # No zap stanza required
end
