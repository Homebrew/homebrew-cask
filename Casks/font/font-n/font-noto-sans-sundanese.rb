cask "font-noto-sans-sundanese" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansSundanese-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Sundanese"
  homepage "https://www.google.com/get/noto/#sans-sund"

  font "NotoSansSundanese-Regular.ttf"

  # No zap stanza required
end
