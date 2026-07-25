cask "font-lustria" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lustria/Lustria-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lustria"
  homepage "https://fonts.google.com/specimen/Lustria"

  font "Lustria-Regular.ttf"

  # No zap stanza required
end
