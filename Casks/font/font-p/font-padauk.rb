cask "font-padauk" do
  version "5.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/padauk"
  name "Padauk"
  homepage "https://fonts.google.com/specimen/Padauk"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Padauk",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Padauk-Bold.ttf"
  font "Padauk-Regular.ttf"

  # No zap stanza required
end
