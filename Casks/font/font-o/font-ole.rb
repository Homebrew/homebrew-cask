cask "font-ole" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ole/Ole-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ole"
  homepage "https://fonts.google.com/specimen/Ole"

  font "Ole-Regular.ttf"

  # No zap stanza required
end
