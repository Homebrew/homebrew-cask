cask "font-khula" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/khula"
  name "Khula"
  homepage "https://fonts.google.com/specimen/Khula"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Khula",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Khula-Bold.ttf"
  font "Khula-ExtraBold.ttf"
  font "Khula-Light.ttf"
  font "Khula-Regular.ttf"
  font "Khula-SemiBold.ttf"

  # No zap stanza required
end
