cask "font-stack-sans-headline" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stacksansheadline/StackSansHeadline%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Stack Sans Headline"
  homepage "https://fonts.google.com/specimen/Stack+Sans+Headline"

  font "StackSansHeadline[wght].ttf"

  # No zap stanza required
end
