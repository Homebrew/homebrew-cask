cask "font-jeju-myeongjo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jejumyeongjo/JejuMyeongjo-Regular.ttf"
  name "Jeju Myeongjo"
  homepage "https://fonts.google.com/earlyaccess"

  font "JejuMyeongjo-Regular.ttf"

  # No zap stanza required
end
