cask "font-noto-sans-syloti-nagri" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansSylotiNagri-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Syloti Nagri"
  homepage "https://www.google.com/get/noto/#sans-sylo"

  font "NotoSansSylotiNagri-Regular.ttf"

  # No zap stanza required
end
