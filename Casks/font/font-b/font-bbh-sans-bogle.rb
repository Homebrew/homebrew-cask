cask "font-bbh-sans-bogle" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bbhsansbogle/BBHSansBogle-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "BBH Sans Bogle"
  homepage "https://fonts.google.com/specimen/BBH+Sans+Bogle"

  font "BBHSansBogle-Regular.ttf"

  # No zap stanza required
end
