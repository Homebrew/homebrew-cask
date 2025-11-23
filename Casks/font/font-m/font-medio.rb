cask "font-medio" do
  version "0.200"
  sha256 "1597610c7fa4f16d9863ed88c0607c665c11273079c9d28b9c898f619fbff094"

  url "https://dotcolon.net/files/fonts/medio_#{version.no_dots}.zip"
  name "Medio"
  homepage "https://dotcolon.net/fonts/medio/"

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

  font "medio.otf"

  # No zap stanza required
end
