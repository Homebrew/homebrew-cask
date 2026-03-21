cask "font-winky-sans" do
  version "1.205"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/winkysans"
  name "Winky Sans"
  homepage "https://fonts.google.com/specimen/Winky+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Winky Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "WinkySans-Italic[wght].ttf"
  font "WinkySans[wght].ttf"

  # No zap stanza required
end
