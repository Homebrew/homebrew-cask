cask "font-akatab" do
  version "4.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/akatab"
  name "Akatab"
  homepage "https://fonts.google.com/specimen/Akatab"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Akatab",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Akatab-Black.ttf"
  font "Akatab-Bold.ttf"
  font "Akatab-ExtraBold.ttf"
  font "Akatab-Medium.ttf"
  font "Akatab-Regular.ttf"
  font "Akatab-SemiBold.ttf"

  # No zap stanza required
end
