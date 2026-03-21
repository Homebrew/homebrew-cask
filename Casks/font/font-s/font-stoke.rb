cask "font-stoke" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/stoke"
  name "Stoke"
  homepage "https://fonts.google.com/specimen/Stoke"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Stoke",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Stoke-Light.ttf"
  font "Stoke-Regular.ttf"

  # No zap stanza required
end
