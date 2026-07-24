cask "font-ferrum" do
  version "0.200"
  sha256 "46dcc2093ba057e1198b8b4b87d708a98752f2b732e63a86155b40bfe775c06c"

  url "https://dotcolon.net/files/fonts/ferrum_#{version.no_dots}.zip"
  name "Ferrum"
  homepage "https://dotcolon.net/fonts/ferrum/"

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

  font "ferrum.otf"

  # No zap stanza required
end
