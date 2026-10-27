cask "font-redaction" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/redaction"
  name "Redaction"
  homepage "https://github.com/jeremymickel/Redaction"

  font "Redaction-Bold.ttf"
  font "Redaction-Italic.ttf"
  font "Redaction-Regular.ttf"

  zap :not_required
end
