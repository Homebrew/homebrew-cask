cask "font-nanum-myeongjo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/nanummyeongjo"
  name "Nanum Myeongjo"
  homepage "https://fonts.google.com/specimen/Nanum+Myeongjo"

  font "NanumMyeongjo-Bold.ttf"
  font "NanumMyeongjo-ExtraBold.ttf"
  font "NanumMyeongjo-Regular.ttf"

  # No zap stanza required
end
