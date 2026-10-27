cask "font-redaction-20" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/redaction20"
  name "Redaction 20"
  homepage "https://github.com/jeremymickel/Redaction"

  font "Redaction20-Bold.ttf"
  font "Redaction20-Italic.ttf"
  font "Redaction20-Regular.ttf"

  zap :not_required
end
