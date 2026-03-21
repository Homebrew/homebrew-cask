cask "font-gentium-book-plus" do
  version "6.101"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gentiumbookplus"
  name "Gentium Book Plus"
  homepage "https://fonts.google.com/specimen/Gentium+Book+Plus"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gentium Book Plus",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GentiumBookPlus-Bold.ttf"
  font "GentiumBookPlus-BoldItalic.ttf"
  font "GentiumBookPlus-Italic.ttf"
  font "GentiumBookPlus-Regular.ttf"

  # No zap stanza required
end
