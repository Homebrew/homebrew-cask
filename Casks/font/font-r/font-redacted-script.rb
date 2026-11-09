cask "font-redacted-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/redactedscript"
  name "Redacted Script"
  homepage "https://fonts.google.com/specimen/Redacted+Script"

  font "RedactedScript-Bold.ttf"
  font "RedactedScript-Light.ttf"
  font "RedactedScript-Regular.ttf"

  zap :not_required
end
