cask "font-redaction-100" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/redaction100"
  name "Redaction 100"
  homepage "https://github.com/jeremymickel/Redaction"

  font "Redaction100-Bold.ttf"
  font "Redaction100-Italic.ttf"
  font "Redaction100-Regular.ttf"

  zap :not_required
end
