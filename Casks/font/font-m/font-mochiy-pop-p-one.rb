cask "font-mochiy-pop-p-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mochiypoppone/MochiyPopPOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mochiy Pop P One"
  homepage "https://fonts.google.com/specimen/Mochiy+Pop+P+One"

  font "MochiyPopPOne-Regular.ttf"

  # No zap stanza required
end
