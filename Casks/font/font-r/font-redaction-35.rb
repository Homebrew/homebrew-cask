cask "font-redaction-35" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/redaction35"
  name "Redaction 35"
  homepage "https://github.com/jeremymickel/Redaction"

  font "Redaction35-Bold.ttf"
  font "Redaction35-Italic.ttf"
  font "Redaction35-Regular.ttf"

  zap :not_required
end
