cask "font-protest-strike" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/proteststrike/ProtestStrike-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Protest Strike"
  homepage "https://fonts.google.com/specimen/Protest+Strike"

  font "ProtestStrike-Regular.ttf"

  # No zap stanza required
end
