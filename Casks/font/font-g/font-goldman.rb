cask "font-goldman" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/goldman"
  name "Goldman"
  homepage "https://fonts.google.com/specimen/Goldman"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Goldman",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Goldman-Bold.ttf"
  font "Goldman-Regular.ttf"

  # No zap stanza required
end
