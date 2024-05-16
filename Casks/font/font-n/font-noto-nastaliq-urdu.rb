cask "font-noto-nastaliq-urdu" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoNastaliqUrdu-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Nastaliq Urdu"
  homepage "https://www.google.com/get/noto/#nastaliq-aran"

  font "NotoNastaliqUrdu-Regular.ttf"

  # No zap stanza required
end
