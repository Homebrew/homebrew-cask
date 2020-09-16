cask "apk-icon-editor" do
  version "2.2.0"
  sha256 "11d08b197f303f638e3663f0f14e0a5fb3587e64b07d4691c63d5d18e90460a0"

  # github.com/kefir500/apk-icon-editor/ was verified as official when first introduced to the cask
  url "https://github.com/kefir500/apk-icon-editor/releases/download/v#{version}/apk-icon-editor_#{version}.dmg"
  appcast "https://github.com/kefir500/apk-icon-editor/releases.atom"
  name "APK Icon Editor"
  desc "Editor for changing APK icons, name, version and other data"
  homepage "https://kefir500.github.io/apk-icon-editor/"

  app "APK Icon Editor.app"
end
