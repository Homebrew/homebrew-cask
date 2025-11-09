cask "font-stack-sans-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stacksanstext/StackSansText%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Stack Sans Text"
  homepage "https://fonts.google.com/specimen/Stack+Sans+Text"

  font "StackSansText[wght].ttf"

  # No zap stanza required
end
