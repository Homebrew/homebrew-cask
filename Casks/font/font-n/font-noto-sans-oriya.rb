cask "font-noto-sans-oriya" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansOriya-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Oriya"
  homepage "https://www.google.com/get/noto/#sans-orya"

  font "NotoSansOriya-Bold.ttf"
  font "NotoSansOriya-Regular.ttf"

  # No zap stanza required
end
