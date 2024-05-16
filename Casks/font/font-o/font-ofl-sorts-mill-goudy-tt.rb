cask "font-ofl-sorts-mill-goudy-tt" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/oflsortsmillgoudytt"
  name "OFL Sorts Mill Goudy TT"
  homepage "https://fonts.google.com/specimen/Sorts+Mill+Goudy"

  font "OFLGoudyStMTT-Italic.ttf"
  font "OFLGoudyStMTT.ttf"

  # No zap stanza required
end
