cask "font-ruwudu" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ruwudu"
  name "Ruwudu"
  homepage "https://fonts.google.com/specimen/Ruwudu"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ruwudu",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ruwudu-Bold.ttf"
  font "Ruwudu-Medium.ttf"
  font "Ruwudu-Regular.ttf"
  font "Ruwudu-SemiBold.ttf"

  # No zap stanza required
end
