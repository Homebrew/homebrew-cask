cask "one-switch" do
  version "1.13,249"
  sha256 "7042d3fe93b1804035674fc5ab34922a6326b39c984bcf3e53a5aad77d31d467"

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitch/#{version.after_comma}.zip"
  appcast "https://fireball.studio/api/release_manager/studio.fireball.OneSwitch.xml"
  name "One Switch"
  homepage "https://fireball.studio/oneswitch"

  depends_on macos: ">= :mojave"

  app "One Switch.app"
end
