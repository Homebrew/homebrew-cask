cask "font-narnoor" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/narnoor"
  name "Narnoor"
  homepage "https://fonts.google.com/specimen/Narnoor"

  font "Narnoor-Bold.ttf"
  font "Narnoor-ExtraBold.ttf"
  font "Narnoor-Medium.ttf"
  font "Narnoor-Regular.ttf"
  font "Narnoor-SemiBold.ttf"

  # No zap stanza required
end
