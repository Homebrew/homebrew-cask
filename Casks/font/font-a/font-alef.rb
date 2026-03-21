cask "font-alef" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/alef"
  name "Alef"
  homepage "https://fonts.google.com/specimen/Alef"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alef",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Alef-Bold.ttf"
  font "Alef-Regular.ttf"

  # No zap stanza required
end
