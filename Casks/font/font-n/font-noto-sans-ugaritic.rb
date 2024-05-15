cask "font-noto-sans-ugaritic" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansUgaritic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Ugaritic"
  homepage "https://www.google.com/get/noto/#sans-ugar"

  font "NotoSansUgaritic-Regular.ttf"

  # No zap stanza required
end
