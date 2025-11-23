cask "font-noto-sans-adlam" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansAdlam-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Adlam"
  homepage "https://www.google.com/get/noto/#sans-adlm"

  font "NotoSansAdlam-Regular.ttf"

  # No zap stanza required
end
