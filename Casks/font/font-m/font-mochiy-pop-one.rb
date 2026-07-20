cask "font-mochiy-pop-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mochiypopone/MochiyPopOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mochiy Pop One"
  homepage "https://fonts.google.com/specimen/Mochiy+Pop+One"

  font "MochiyPopOne-Regular.ttf"

  # No zap stanza required
end
