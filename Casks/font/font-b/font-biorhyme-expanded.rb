cask "font-biorhyme-expanded" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/biorhymeexpanded"
  name "BioRhyme Expanded"
  homepage "https://fonts.google.com/specimen/BioRhyme+Expanded"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "BioRhyme Expanded",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BioRhymeExpanded-Bold.ttf"
  font "BioRhymeExpanded-ExtraBold.ttf"
  font "BioRhymeExpanded-ExtraLight.ttf"
  font "BioRhymeExpanded-Light.ttf"
  font "BioRhymeExpanded-Regular.ttf"

  # No zap stanza required
end
