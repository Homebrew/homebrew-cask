cask "font-penna" do
  version "0.100"
  sha256 "d4ab6bcadd70e323eea6c6ce54499627b931f2d8ef285a5030e80ba95390e9ed"

  url "https://dotcolon.net/files/fonts/penna_#{version.no_dots}.zip"
  name "penna"
  homepage "https://dotcolon.net/fonts/penna/"

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

  font "penna.otf"

  # No zap stanza required
end
