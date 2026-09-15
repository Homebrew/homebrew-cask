cask "font-siemreap" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/siemreap/Siemreap.ttf"
  name "Siemreap"
  homepage "https://fonts.google.com/specimen/Siemreap"

  font "Siemreap.ttf"

  # No zap stanza required
end
