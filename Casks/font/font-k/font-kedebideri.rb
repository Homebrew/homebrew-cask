cask "font-kedebideri" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/kedebideri"
  name "Kedebideri"
  homepage "https://github.com/silnrsi/font-kedebideri"

  font "Kedebideri-Black.ttf"
  font "Kedebideri-Bold.ttf"
  font "Kedebideri-ExtraBold.ttf"
  font "Kedebideri-Medium.ttf"
  font "Kedebideri-Regular.ttf"
  font "Kedebideri-SemiBold.ttf"

  # No zap stanza required
end
