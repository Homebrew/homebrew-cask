cask "font-sanchez" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sanchez"
  name "Sanchez"
  homepage "https://fonts.google.com/specimen/Sanchez"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sanchez",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sanchez-Italic.ttf"
  font "Sanchez-Regular.ttf"

  # No zap stanza required
end
