cask "font-noto-mono" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoMono-hinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Mono"
  homepage "https://www.google.com/get/noto/#mono-mono"

  font "NotoMono-Regular.ttf"

  # No zap stanza required
end
