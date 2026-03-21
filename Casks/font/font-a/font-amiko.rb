cask "font-amiko" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/amiko"
  name "Amiko"
  homepage "https://fonts.google.com/specimen/Amiko"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Amiko",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Amiko-Bold.ttf"
  font "Amiko-Regular.ttf"
  font "Amiko-SemiBold.ttf"

  # No zap stanza required
end
