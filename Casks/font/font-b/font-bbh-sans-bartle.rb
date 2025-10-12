cask "font-bbh-sans-bartle" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bbhsansbartle/BBHSansBartle-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "BBH Sans Bartle"
  homepage "https://fonts.google.com/specimen/BBH+Sans+Bartle"

  font "BBHSansBartle-Regular.ttf"

  # No zap stanza required
end
