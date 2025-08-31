cask "font-tirra" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirra"
  name "Tirra"
  homepage "https://fonts.google.com/specimen/Tirra"

  font "Tirra-Black.ttf"
  font "Tirra-Bold.ttf"
  font "Tirra-ExtraBold.ttf"
  font "Tirra-Medium.ttf"
  font "Tirra-Regular.ttf"
  font "Tirra-SemiBold.ttf"

  # No zap stanza required
end
