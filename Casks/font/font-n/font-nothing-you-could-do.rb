cask "font-nothing-you-could-do" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nothingyoucoulddo/NothingYouCouldDo.ttf",
      verified: "github.com/google/fonts/"
  name "Nothing You Could Do"
  homepage "https://fonts.google.com/specimen/Nothing+You+Could+Do"

  font "NothingYouCouldDo.ttf"

  # No zap stanza required
end
