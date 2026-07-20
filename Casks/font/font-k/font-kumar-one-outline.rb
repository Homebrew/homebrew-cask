cask "font-kumar-one-outline" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kumaroneoutline/KumarOneOutline-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kumar One Outline"
  homepage "https://fonts.google.com/specimen/Kumar+One+Outline"

  font "KumarOneOutline-Regular.ttf"

  # No zap stanza required
end
