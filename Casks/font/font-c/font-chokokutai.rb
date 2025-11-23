cask "font-chokokutai" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chokokutai/Chokokutai-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Chokokutai"
  homepage "https://fonts.google.com/specimen/Chokokutai"

  font "Chokokutai-Regular.ttf"

  # No zap stanza required
end
