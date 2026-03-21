cask "font-ropa-sans" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ropasans"
  name "Ropa Sans"
  homepage "https://fonts.google.com/specimen/Ropa+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ropa Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RopaSans-Italic.ttf"
  font "RopaSans-Regular.ttf"

  # No zap stanza required
end
