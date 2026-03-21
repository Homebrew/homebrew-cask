cask "font-amatic-sc" do
  version "2.505"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/amaticsc"
  name "Amatic SC"
  homepage "https://fonts.google.com/specimen/Amatic+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Amatic SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AmaticSC-Bold.ttf"
  font "AmaticSC-Regular.ttf"

  # No zap stanza required
end
