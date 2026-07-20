cask "font-rocknroll-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rocknrollone/RocknRollOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "RocknRoll One"
  homepage "https://fonts.google.com/specimen/RocknRoll+One"

  font "RocknRollOne-Regular.ttf"

  # No zap stanza required
end
