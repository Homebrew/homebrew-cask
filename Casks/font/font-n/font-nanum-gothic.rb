cask "font-nanum-gothic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/nanumgothic"
  name "Nanum Gothic"
  homepage "https://fonts.google.com/specimen/Nanum+Gothic"

  font "NanumGothic-Bold.ttf"
  font "NanumGothic-ExtraBold.ttf"
  font "NanumGothic-Regular.ttf"

  # No zap stanza required
end
