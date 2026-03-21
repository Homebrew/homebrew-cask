cask "font-asul" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/asul"
  name "Asul"
  homepage "https://fonts.google.com/specimen/Asul"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Asul",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Asul-Bold.ttf"
  font "Asul-Regular.ttf"

  # No zap stanza required
end
