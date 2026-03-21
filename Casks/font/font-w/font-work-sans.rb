cask "font-work-sans" do
  version "2.012"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/worksans"
  name "Work Sans"
  homepage "https://fonts.google.com/specimen/Work+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Work Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "WorkSans-Italic[wght].ttf"
  font "WorkSans[wght].ttf"

  # No zap stanza required
end
