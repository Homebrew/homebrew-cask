cask "font-quintessential" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/quintessential/Quintessential-Regular.ttf"
  name "Quintessential"
  homepage "https://fonts.google.com/specimen/Quintessential"

  font "Quintessential-Regular.ttf"

  zap :not_required
end
