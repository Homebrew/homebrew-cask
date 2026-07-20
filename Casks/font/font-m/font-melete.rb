cask "font-melete" do
  version "0.200"
  sha256 "fb4346e9eb31a318c25ef6af6be8b6953a302648f9d2c86a110f22337db16363"

  url "https://dotcolon.net/files/fonts/melete_#{version.no_dots}.zip"
  name "Melete"
  homepage "https://dotcolon.net/fonts/melete/"

  # The zip filename includes a version without dots but the version text on
  # the homepage has an empty HTML comment between the leading "Version" text
  # and the version (e.g. `Version <!-- -->1.2.3`). This uses a loose regex to
  # work around this issue but it could lead to unexpected matches, so we may
  # want to keep an eye on this situation and make this regex more strict in
  # the future when possible.
  livecheck do
    url :homepage
    regex(/Version\D*?(\d+(?:\.\d+)+)/i)
  end

  font "Melete-Bold.otf"
  font "Melete-Light.otf"
  font "Melete-Medium.otf"
  font "Melete-Regular.otf"
  font "Melete-UltraLight.otf"

  # No zap stanza required
end
