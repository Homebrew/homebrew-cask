cask "font-atma" do
  version "1.102"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/atma"
  name "Atma"
  homepage "https://fonts.google.com/specimen/Atma"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Atma",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Atma-Bold.ttf"
  font "Atma-Light.ttf"
  font "Atma-Medium.ttf"
  font "Atma-Regular.ttf"
  font "Atma-SemiBold.ttf"

  # No zap stanza required
end
