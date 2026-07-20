cask "font-inika" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/inika"
  name "Inika"
  homepage "https://fonts.google.com/specimen/Inika"

  font "Inika-Bold.ttf"
  font "Inika-Regular.ttf"

  # No zap stanza required
end
