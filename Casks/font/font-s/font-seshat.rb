cask "font-seshat" do
  version "0.100"
  sha256 "cad99de1e6755f1720c63b6fd37f23b87f3284ae8728271b62e48d9420c1140f"

  url "https://dotcolon.net/files/fonts/seshat_#{version.no_dots}.zip"
  name "seshat"
  homepage "https://dotcolon.net/fonts/seshat/"

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

  font "Seshat.otf"

  # No zap stanza required
end
