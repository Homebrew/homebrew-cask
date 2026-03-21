cask "font-syncopate" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "apache/syncopate"
  name "Syncopate"
  homepage "https://fonts.google.com/specimen/Syncopate"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Syncopate",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Syncopate-Bold.ttf"
  font "Syncopate-Regular.ttf"

  # No zap stanza required
end
