cask "font-redaction-10" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/redaction10"
  name "Redaction 10"
  homepage "https://github.com/jeremymickel/Redaction"

  font "Redaction10-Bold.ttf"
  font "Redaction10-Italic.ttf"
  font "Redaction10-Regular.ttf"

  zap :not_required
end
