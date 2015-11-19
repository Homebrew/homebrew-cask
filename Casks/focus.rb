cask :v1 => 'focus' do
  version '1.4.11'
  sha256 '22524abb327ce17d70ab50ffc9de4d8911fd30bf84490d14c28383c8fd8d45ed'

  url "https://heyfocus.com/releases/Focus-#{version}.zip"
  appcast 'https://heyfocus.com/appcast.xml',
          :sha256 => 'e74533055daddba314e6a0dfa6904565877a734c6da459d33913f0a4510f2da0'
  name 'Focus'
  homepage 'https://heyfocus.com/'
  license :commercial

  depends_on :macos => '>= :mavericks'

  app 'Focus.app'

  uninstall :quit => 'BradJasper.focus'
  zap :delete => [
                  '~/Library/Caches/BradJasper.focus/',
                  '~/Library/Application Support/Focus/',
                  '~/Library/Preferences/BradJasper.focus.plist'
                 ]
end
