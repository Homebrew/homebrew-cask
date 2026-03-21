cask "font-winky-rough" do
  version "1.206"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/winkyrough"
  name "Winky Rough"
  homepage "https://fonts.google.com/specimen/Winky+Rough"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Winky Rough",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "WinkyRough-Italic[wght].ttf"
  font "WinkyRough[wght].ttf"

  # No zap stanza required
end
