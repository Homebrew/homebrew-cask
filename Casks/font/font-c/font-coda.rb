cask "font-coda" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/coda"
  name "Coda"
  homepage "https://fonts.google.com/specimen/Coda"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Coda",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Coda-ExtraBold.ttf"
  font "Coda-Regular.ttf"

  # No zap stanza required
end
