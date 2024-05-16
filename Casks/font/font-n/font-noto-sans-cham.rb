cask "font-noto-sans-cham" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCham-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Cham"
  homepage "https://www.google.com/get/noto/#sans-cham"

  font "NotoSansCham-Black.ttf"
  font "NotoSansCham-Bold.ttf"
  font "NotoSansCham-ExtraBold.ttf"
  font "NotoSansCham-ExtraLight.ttf"
  font "NotoSansCham-Light.ttf"
  font "NotoSansCham-Medium.ttf"
  font "NotoSansCham-Regular.ttf"
  font "NotoSansCham-SemiBold.ttf"
  font "NotoSansCham-Thin.ttf"

  # No zap stanza required
end
