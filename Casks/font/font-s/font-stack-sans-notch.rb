cask "font-stack-sans-notch" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stacksansnotch/StackSansNotch%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Stack Sans Notch"
  homepage "https://fonts.google.com/specimen/Stack+Sans+Notch"

  font "StackSansNotch[wght].ttf"

  # No zap stanza required
end
