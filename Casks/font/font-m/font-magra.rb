cask "font-magra" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/magra"
  name "Magra"
  homepage "https://fonts.google.com/specimen/Magra"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Magra",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Magra-Bold.ttf"
  font "Magra-Regular.ttf"

  # No zap stanza required
end
