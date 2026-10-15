cask "font-libron" do
  version "0.31"
  sha256 "ce9a355b46b11c2cbe158e9149ee13a3fa813ca28661d878723d72f477324033"

  url "https://github.com/nicoverbruggen/libron/releases/download/v#{version}/Libron.zip"
  name "Libron"
  homepage "https://nicoverbruggen.be/fonts"

  font "Libron-Bold.ttf"
  font "Libron-BoldItalic.ttf"
  font "Libron-Italic.ttf"
  font "Libron-Regular.ttf"

  # No zap stanza required
end
