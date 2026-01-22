cask "font-noto-sans-syloti-nagri" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansSylotiNagri-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Syloti Nagri"
  homepage "https://fonts.google.com/#sans-sylo"

  font "NotoSansSylotiNagri-Regular.ttf"

  # No zap stanza required
end
