cask 'keycast' do
  version '1.1'
  sha256 '61c382ee6aafa393470b86a833a93ecbe1ce91a5665f273109631733facdb727'

  url "https://github.com/cho45/KeyCast/releases/download/v#{version}/KeyCast.dmg"
  appcast 'https://github.com/cho45/KeyCast/releases.atom',
          checkpoint: '6c5dd6a56638fb560a20b31c4d0c6dcbb400954bdc8ba7d9d1cee5abd8fb7042'
  name 'KeyCast'
  homepage 'https://github.com/cho45/KeyCast'

  app 'KeyCast.app'
end
