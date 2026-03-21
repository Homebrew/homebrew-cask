cask "font-rowdies" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rowdies"
  name "Rowdies"
  homepage "https://fonts.google.com/specimen/Rowdies"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rowdies",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Rowdies-Bold.ttf"
  font "Rowdies-Light.ttf"
  font "Rowdies-Regular.ttf"

  # No zap stanza required
end
