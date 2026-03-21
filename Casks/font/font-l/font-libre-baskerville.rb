cask "font-libre-baskerville" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/librebaskerville"
  name "Libre Baskerville"
  homepage "https://fonts.google.com/specimen/Libre+Baskerville"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Libre Baskerville",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LibreBaskerville-Italic[wght].ttf"
  font "LibreBaskerville[wght].ttf"

  # No zap stanza required
end
