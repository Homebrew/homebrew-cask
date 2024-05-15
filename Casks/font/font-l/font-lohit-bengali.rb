cask "font-lohit-bengali" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lohitbengali/Lohit-Bengali.ttf",
      verified: "github.com/google/fonts/"
  name "Lohit Bengali"
  homepage "https://fonts.google.com/specimen/Lohit+Bengali"

  font "Lohit-Bengali.ttf"

  # No zap stanza required
end
