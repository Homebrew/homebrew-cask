cask "font-stack-sans-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stacksanstext/StackSansText%5Bwght%5D.ttf"
  name "Stack Sans Text"
  homepage "https://github.com/DylanYoungKoto/Stack-Sans"

  font "StackSansText[wght].ttf"

  # No zap stanza required
end
