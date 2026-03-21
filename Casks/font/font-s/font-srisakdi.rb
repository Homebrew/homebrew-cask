cask "font-srisakdi" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/srisakdi"
  name "Srisakdi"
  homepage "https://fonts.google.com/specimen/Srisakdi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Srisakdi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Srisakdi-Bold.ttf"
  font "Srisakdi-Regular.ttf"

  # No zap stanza required
end
