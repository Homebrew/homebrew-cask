cask "font-aclonica" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/aclonica/Aclonica-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aclonica"
  homepage "https://fonts.google.com/specimen/Aclonica"

  font "Aclonica-Regular.ttf"

  # No zap stanza required
end
