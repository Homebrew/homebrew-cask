cask "font-biz-udgothic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bizudgothic"
  name "BIZ UDGothic"
  homepage "https://fonts.google.com/specimen/BIZ+UDGothic"

  font "BIZUDGothic-Bold.ttf"
  font "BIZUDGothic-Regular.ttf"

  # No zap stanza required
end
