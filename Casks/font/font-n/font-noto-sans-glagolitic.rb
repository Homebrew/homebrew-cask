cask "font-noto-sans-glagolitic" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansGlagolitic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Glagolitic"
  homepage "https://www.google.com/get/noto/#sans-glag"

  font "NotoSansGlagolitic-Regular.ttf"

  # No zap stanza required
end
