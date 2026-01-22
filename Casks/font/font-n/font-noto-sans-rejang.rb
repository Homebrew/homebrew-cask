cask "font-noto-sans-rejang" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansRejang-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Rejang"
  homepage "https://fonts.google.com/#sans-rjng"

  font "NotoSansRejang-Regular.ttf"

  # No zap stanza required
end
