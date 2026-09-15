cask "font-redacted" do
  version :latest
  sha256 :no_check

  url "https://github.com/christiannaths/Redacted-Font/archive/refs/heads/master.tar.gz"
  name "Redacted"
  homepage "https://github.com/christiannaths/Redacted-Font"

  font "redacted-font-master/Redacted/fonts/ttf/Redacted-Regular.ttf"
  font "redacted-font-master/RedactedScript/fonts/ttf/RedactedScript-Bold.ttf"
  font "redacted-font-master/RedactedScript/fonts/ttf/RedactedScript-Light.ttf"
  font "redacted-font-master/RedactedScript/fonts/ttf/RedactedScript-Regular.ttf"

  # No zap stanza required
end
