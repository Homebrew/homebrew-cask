cask "font-noto-sans-old-south-arabian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansOldSouthArabian-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Old South Arabian"
  homepage "https://fonts.google.com/#sans-sarb"

  font "NotoSansOldSouthArabian-Regular.ttf"

  # No zap stanza required
end
