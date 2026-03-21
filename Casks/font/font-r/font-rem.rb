cask "font-rem" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rem"
  name "REM"
  homepage "https://fonts.google.com/specimen/REM"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "REM",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "REM-Italic[wght].ttf"
  font "REM[wght].ttf"

  # No zap stanza required
end
