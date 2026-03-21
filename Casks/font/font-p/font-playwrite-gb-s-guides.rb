cask "font-playwrite-gb-s-guides" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playwritegbsguides"
  name "Playwrite GB S Guides"
  homepage "https://fonts.google.com/specimen/Playwrite+GB+S+Guides"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite GB S Guides",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteGBSGuides-Italic.ttf"
  font "PlaywriteGBSGuides-Regular.ttf"

  # No zap stanza required
end
