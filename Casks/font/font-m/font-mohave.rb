cask "font-mohave" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mohave"
  name "Mohave"
  homepage "https://fonts.google.com/specimen/Mohave"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mohave",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Mohave-Italic[wght].ttf"
  font "Mohave[wght].ttf"

  # No zap stanza required
end
