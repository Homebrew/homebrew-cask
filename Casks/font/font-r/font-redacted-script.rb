cask "font-redacted-script" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/redactedscript"
  name "Redacted Script"
  homepage "https://fonts.google.com/specimen/Redacted+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Redacted Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RedactedScript-Bold.ttf"
  font "RedactedScript-Light.ttf"
  font "RedactedScript-Regular.ttf"

  # No zap stanza required
end
