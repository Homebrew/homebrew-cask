cask "font-yantramanav" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/yantramanav"
  name "Yantramanav"
  homepage "https://fonts.google.com/specimen/Yantramanav"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yantramanav",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Yantramanav-Black.ttf"
  font "Yantramanav-Bold.ttf"
  font "Yantramanav-Light.ttf"
  font "Yantramanav-Medium.ttf"
  font "Yantramanav-Regular.ttf"
  font "Yantramanav-Thin.ttf"

  # No zap stanza required
end
