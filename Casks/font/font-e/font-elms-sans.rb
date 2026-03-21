cask "font-elms-sans" do
  version "1.061"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/elmssans"
  name "Elms Sans"
  homepage "https://fonts.google.com/specimen/Elms+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Elms Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ElmsSans-Italic[wght].ttf"
  font "ElmsSans[wght].ttf"

  # No zap stanza required
end
