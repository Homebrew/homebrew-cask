cask "font-redaction-35" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/redaction35"
  name "Redaction 35"
  homepage "https://fonts.google.com/specimen/Redaction+35"

  font "Redaction35-Bold.ttf"
  font "Redaction35-Italic.ttf"
  font "Redaction35-Regular.ttf"

  zap :not_required
end
