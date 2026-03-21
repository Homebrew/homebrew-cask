cask "font-corben" do
  version "1.101"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/corben"
  name "Corben"
  homepage "https://fonts.google.com/specimen/Corben"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Corben",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Corben-Bold.ttf"
  font "Corben-Regular.ttf"

  # No zap stanza required
end
