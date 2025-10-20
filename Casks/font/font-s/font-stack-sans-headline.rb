cask "font-stack-sans-headline" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stacksansheadline/StackSansHeadline%5Bwght%5D.ttf"
  name "Stack Sans Headline"
  homepage "https://github.com/DylanYoungKoto/Stack-Sans"

  font "StackSansHeadline[wght].ttf"

  # No zap stanza required
end
