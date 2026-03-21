cask "font-kadwa" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kadwa"
  name "Kadwa"
  homepage "https://fonts.google.com/specimen/Kadwa"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kadwa",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kadwa-Bold.ttf"
  font "Kadwa-Regular.ttf"

  # No zap stanza required
end
