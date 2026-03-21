cask "font-quattrocento" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/quattrocento"
  name "Quattrocento"
  homepage "https://fonts.google.com/specimen/Quattrocento"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Quattrocento",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Quattrocento-Bold.ttf"
  font "Quattrocento-Regular.ttf"

  # No zap stanza required
end
