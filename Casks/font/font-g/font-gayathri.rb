cask "font-gayathri" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gayathri"
  name "Gayathri"
  homepage "https://fonts.google.com/specimen/Gayathri"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gayathri",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gayathri-Bold.ttf"
  font "Gayathri-Regular.ttf"
  font "Gayathri-Thin.ttf"

  # No zap stanza required
end
