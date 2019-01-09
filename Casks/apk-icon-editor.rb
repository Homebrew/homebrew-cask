cask 'apk-icon-editor' do
  version '2.1.0'
  sha256 '2168fa47f0ac5d29cc2d18e48fa70a0bb4cff07397af97bf3b30d31793c69b3f'

  # github.com/kefir500/apk-icon-editor was verified as official when first introduced to the cask
  url "https://github.com/kefir500/apk-icon-editor/releases/download/v#{version}/apk-icon-editor_#{version}.dmg"
  appcast 'https://github.com/kefir500/apk-icon-editor/releases.atom'
  name 'APK Icon Editor'
  homepage 'https://kefir500.github.io/apk-icon-editor/'

  app 'APK Icon Editor.app'
end
