cask "font-sedan" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sedan"
  name "Sedan"
  homepage "https://fonts.google.com/specimen/Sedan"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sedan",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sedan-Italic.ttf"
  font "Sedan-Regular.ttf"

  # No zap stanza required
end
