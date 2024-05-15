cask "font-style-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stylescript/StyleScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Style Script"
  desc "Upright script with looks that vary from casual to formal in appearance"
  homepage "https://fonts.google.com/specimen/Style+Script"

  font "StyleScript-Regular.ttf"

  # No zap stanza required
end
