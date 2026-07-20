cask "font-updock" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/updock/Updock-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Updock"
  homepage "https://fonts.google.com/specimen/Updock"

  font "Updock-Regular.ttf"

  # No zap stanza required
end
