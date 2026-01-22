cask "font-noto-nastaliq-urdu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoNastaliqUrdu-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Nastaliq Urdu"
  homepage "https://font.google.com"

  font "NotoNastaliqUrdu-Regular.ttf"

  # No zap stanza required
end
