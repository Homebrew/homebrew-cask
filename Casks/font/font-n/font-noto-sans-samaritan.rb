cask "font-noto-sans-samaritan" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansSamaritan-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Samaritan"
  homepage "https://fonts.google.com/#sans-samr"

  font "NotoSansSamaritan-Regular.ttf"

  # No zap stanza required
end
