cask "font-amiko" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/amiko"
  name "Amiko"
  homepage "https://fonts.google.com/specimen/Amiko"

  font "Amiko-Bold.ttf"
  font "Amiko-Regular.ttf"
  font "Amiko-SemiBold.ttf"

  # No zap stanza required
end
