cask "font-redaction-50" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/redaction50"
  name "Redaction 50"
  homepage "https://github.com/jeremymickel/Redaction"

  font "Redaction50-Bold.ttf"
  font "Redaction50-Italic.ttf"
  font "Redaction50-Regular.ttf"

  zap :not_required
end
