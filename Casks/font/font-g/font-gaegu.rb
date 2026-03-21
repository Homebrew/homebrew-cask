cask "font-gaegu" do
  version "1.00"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gaegu"
  name "Gaegu"
  homepage "https://fonts.google.com/specimen/Gaegu"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gaegu",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gaegu-Bold.ttf"
  font "Gaegu-Light.ttf"
  font "Gaegu-Regular.ttf"

  # No zap stanza required
end
