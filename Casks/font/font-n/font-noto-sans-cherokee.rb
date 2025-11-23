cask "font-noto-sans-cherokee" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCherokee-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Cherokee"
  homepage "https://www.google.com/get/noto/#sans-cher"

  font "NotoSansCherokee-Black.ttf"
  font "NotoSansCherokee-Bold.ttf"
  font "NotoSansCherokee-ExtraBold.ttf"
  font "NotoSansCherokee-ExtraLight.ttf"
  font "NotoSansCherokee-Light.ttf"
  font "NotoSansCherokee-Medium.ttf"
  font "NotoSansCherokee-Regular.ttf"
  font "NotoSansCherokee-SemiBold.ttf"
  font "NotoSansCherokee-Thin.ttf"

  # No zap stanza required
end
