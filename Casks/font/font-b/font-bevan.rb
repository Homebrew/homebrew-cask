cask "font-bevan" do
  version "2.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bevan"
  name "Bevan"
  homepage "https://fonts.google.com/specimen/Bevan"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bevan",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Bevan-Italic.ttf"
  font "Bevan-Regular.ttf"

  # No zap stanza required
end
