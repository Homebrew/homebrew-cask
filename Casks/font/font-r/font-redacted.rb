cask "font-redacted" do
  version :latest
  sha256 :no_check

  url "https://github.com/christiannaths/Redacted-Font/archive/old-sources.zip"
  name "Redacted"
  homepage "https://github.com/christiannaths/Redacted-Font"

  font "Redacted-Font-old-sources/fonts/redacted-regular.ttf"
  font "Redacted-Font-old-sources/fonts/redacted-script-bold.ttf"
  font "Redacted-Font-old-sources/fonts/redacted-script-light.ttf"
  font "Redacted-Font-old-sources/fonts/redacted-script-regular.ttf"

  # No zap stanza required
end
