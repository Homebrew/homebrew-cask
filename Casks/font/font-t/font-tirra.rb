cask "font-tirra" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/tirra"
  name "Tirra"
  homepage "https://github.com/silnrsi/font-akatab"

  font "Tirra-Black.ttf"
  font "Tirra-Bold.ttf"
  font "Tirra-ExtraBold.ttf"
  font "Tirra-Medium.ttf"
  font "Tirra-Regular.ttf"
  font "Tirra-SemiBold.ttf"

  # No zap stanza required
end
