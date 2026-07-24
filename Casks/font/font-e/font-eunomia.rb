cask "font-eunomia" do
  version "0.200"
  sha256 "c1718a0e2592cfd7537d0114de580b9c66e503f6766e6e5e6c702a9e7fb69ee4"

  url "https://dotcolon.net/files/fonts/eunomia_#{version.no_dots}.zip"
  name "Eunomia"
  homepage "https://dotcolon.net/fonts/eunomia/"

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

  font "Eunomia-Bold.otf"
  font "Eunomia-Light.otf"
  font "Eunomia-Regular.otf"

  # No zap stanza required
end
