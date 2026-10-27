cask "font-redaction-70" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/redaction70"
  name "Redaction 70"
  homepage "https://github.com/jeremymickel/Redaction"

  font "Redaction70-Bold.ttf"
  font "Redaction70-Italic.ttf"
  font "Redaction70-Regular.ttf"

  zap :not_required
end
