cask "font-dm-sans" do
  version "4.004"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/dmsans"
  name "DM Sans"
  homepage "https://fonts.google.com/specimen/DM+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "DM Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DMSans-Italic[opsz,wght].ttf"
  font "DMSans[opsz,wght].ttf"

  # No zap stanza required
end
