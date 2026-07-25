cask "font-ledger" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ledger/Ledger-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ledger"
  homepage "https://fonts.google.com/specimen/Ledger"

  font "Ledger-Regular.ttf"

  # No zap stanza required
end
