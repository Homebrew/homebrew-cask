cask "font-rochester" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/rochester/Rochester-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rochester"
  desc "The perfect selection when you want to add a touch of class or a smart looking formal style to any correspondence or memorandum!"
  homepage "https://fonts.google.com/specimen/Rochester"

  font "Rochester-Regular.ttf"

  # No zap stanza required
end
