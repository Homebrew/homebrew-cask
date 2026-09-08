cask "font-dynalight" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dynalight/Dynalight-Regular.ttf"
  name "Dynalight"
  homepage "https://fonts.google.com/specimen/Dynalight"

  font "Dynalight-Regular.ttf"

  # No zap stanza required
end
