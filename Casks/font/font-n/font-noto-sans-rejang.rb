cask "font-noto-sans-rejang" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansRejang-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Rejang"
  homepage "https://www.google.com/get/noto/#sans-rjng"

  font "NotoSansRejang-Regular.ttf"

  # No zap stanza required
end
