cask "font-noto-sans-symbols" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansSymbols-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Symbols"
  homepage "https://www.google.com/get/noto/#sans-zsym"

  font "NotoSansSymbols-Black.ttf"
  font "NotoSansSymbols-Bold.ttf"
  font "NotoSansSymbols-ExtraBold.ttf"
  font "NotoSansSymbols-ExtraLight.ttf"
  font "NotoSansSymbols-Light.ttf"
  font "NotoSansSymbols-Medium.ttf"
  font "NotoSansSymbols-Regular.ttf"
  font "NotoSansSymbols-SemiBold.ttf"
  font "NotoSansSymbols-Thin.ttf"

  # No zap stanza required
end
