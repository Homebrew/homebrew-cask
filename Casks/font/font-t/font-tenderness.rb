cask "font-tenderness" do
  version "0.601"
  sha256 "e9d512398aca5ae3633795b80918af30df7c7d616a5c381d130bf8ca32037891"

  url "https://dotcolon.net/files/fonts/tenderness_#{version.no_dots}.zip"
  name "Tenderness"
  homepage "https://dotcolon.net/fonts/tenderness/"

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

  font "Tenderness-Regular.otf"

  # No zap stanza required
end
