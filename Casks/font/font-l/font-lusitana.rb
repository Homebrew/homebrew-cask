cask "font-lusitana" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lusitana"
  name "Lusitana"
  homepage "https://fonts.google.com/specimen/Lusitana"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lusitana",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Lusitana-Bold.ttf"
  font "Lusitana-Regular.ttf"

  # No zap stanza required
end
