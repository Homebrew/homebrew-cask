cask "font-delius-unicase" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/deliusunicase"
  name "Delius Unicase"
  homepage "https://fonts.google.com/specimen/Delius+Unicase"

  font "DeliusUnicase-Bold.ttf"
  font "DeliusUnicase-Regular.ttf"

  # No zap stanza required
end
