cask "font-gowun-batang" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/gowunbatang"
  name "Gowun Batang"
  homepage "https://fonts.google.com/specimen/Gowun+Batang"

  font "GowunBatang-Bold.ttf"
  font "GowunBatang-Regular.ttf"

  # No zap stanza required
end
