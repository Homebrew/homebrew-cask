cask "font-arya" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/arya"
  name "Arya"
  homepage "https://fonts.google.com/specimen/Arya"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Arya",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Arya-Bold.ttf"
  font "Arya-Regular.ttf"

  # No zap stanza required
end
