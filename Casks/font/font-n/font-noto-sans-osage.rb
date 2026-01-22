cask "font-noto-sans-osage" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansOsage-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Osage"
  homepage "https://fonts.google.com/#sans-osge"

  font "NotoSansOsage-Regular.ttf"

  # No zap stanza required
end
