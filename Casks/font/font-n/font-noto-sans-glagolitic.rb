cask "font-noto-sans-glagolitic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansGlagolitic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Glagolitic"
  homepage "https://fonts.google.com/#sans-glag"

  font "NotoSansGlagolitic-Regular.ttf"

  # No zap stanza required
end
